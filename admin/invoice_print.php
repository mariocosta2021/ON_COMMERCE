<?php
	include 'includes/session.php';

	function generateRow($conn){
		$contents = '';
	 	
		$stmt = $conn->prepare("SELECT * FROM details LEFT JOIN products ON products.id=details.product_id LEFT JOIN sales ON sales.id=details.sales_id WHERE details.sales_id=:id");
		$stmt->execute(['id'=>$_GET['userId']]);

		$total = 0;
		foreach($stmt as $row){
            // var_dump(($row));
			$subtotal = $row['price']*$row['quantity'];
            $total+=$subtotal;
			$contents .= '
			<tr>
				<td>'.$row['name'].'</td>
				<td>'.number_format($row['price'], 2).' AKZ</td>
				<td>'.$row['quantity'].'</td>
				<td>'.number_format($subtotal, 2).' AKZ</td>
			</tr>
			';
		}

		$contents .= '
			<tr>
				<td colspan="3" align="right"><b>Total</b></td>
				<td align="right"><b>'.number_format($total, 2).' AKZ</b></td>
			</tr>
		';
		return $contents;
	}
    if(isset($_GET['userId'])){

		$conn = $pdo->open();

        $stmt = $conn->prepare("SELECT * FROM details LEFT JOIN products ON products.id=details.product_id LEFT JOIN sales ON sales.id=details.sales_id WHERE details.sales_id=:id");
        $stmt->execute(['id'=>$_GET['userId']]);
        // var_dump($row);
        $name = ''; 
        $transactionId = '';
        $saleDate = '';
        foreach($stmt as $row){
            $stmt1 = $conn->prepare("SELECT * FROM sales INNER JOIN users ON sales.user_id = users.id WHERE sales.id = :id");
            $stmt1->execute(['id'=>$_GET['userId']]);

            foreach($stmt1 as $row1) {
                // var_dump($row1);
                $name = $row1['firstname'].' '.$row1['lastname'];
                $transactionId = $row1['pay_id'];
                $saleDate = $row1['sales_date'];
            }
        }


		require_once('../tcpdf/tcpdf.php');   
	    $pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);  
	    $pdf->SetCreator(PDF_CREATOR);  
	    $pdf->SetTitle('Sales Report: ');  
	    $pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);  
	    $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));  
	    $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));  
	    $pdf->SetDefaultMonospacedFont('helvetica');  
	    $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);  
	    $pdf->SetMargins(PDF_MARGIN_LEFT, '10', PDF_MARGIN_RIGHT);  
	    $pdf->setPrintHeader(false);  
	    $pdf->setPrintFooter(false);  
	    $pdf->SetAutoPageBreak(TRUE, 10);  
	    $pdf->SetFont('helvetica', '', 11);  
	    $pdf->AddPage();  
	    $content = '';  
	    $content .= '
	      	<h2 align="center">SICOMERCE - Sistema de Vendas Online</h2>
	      	<h4 align="center">Fatura de venda</h4>
	      	<h4 align="center"></h4>

            <br/>';
        $content .= '<h4>Nome:'.$name.'</h4>';
        $content .= '<h4>Transação#:'.$transactionId.'</h4>';
        $content .= '<h4>Data:'.$saleDate.'</h4>';
            
        $content .= '
	      	<table border="1" cellspacing="0" cellpadding="3" class="table">  
	           <tr>  
	           		<th width="30%" align="center"><b>Produto</b></th>
	                <th width="30%" align="center"><b>Preço</b></th>
                    <th width="10%" align="center"><b>Qtd.</b></th>
	                <th width="30%" align="center"><b>Subtotal</b></th>
	           </tr>  
	      ';  
	    $content .= generateRow($conn);  
	    $content .= '</table>';  
	    $pdf->writeHTML($content);  
	    $pdf->Output('sales.pdf', 'I');

	    $pdo->close();
    }
	else{
		$_SESSION['error'] = 'É necessário o intervalo de data para imprimir o relatório';
		header('location: sales.php');
	}
	
?>