<?php include 'includes/session.php'; ?>
<?php
	$slug = $_GET['category'];

	$conn = $pdo->open();

	try{
		$stmt = $conn->prepare("SELECT * FROM category WHERE cat_slug = :slug");
		$stmt->execute(['slug' => $slug]);
		$cat = $stmt->fetch();
		$catid = $cat['id'];
	}
	catch(PDOException $e){
		echo "Ocorreu algum problema: " . $e->getMessage();
	}

	$pdo->close();

?>
<?php include 'includes/header2.php'; ?>

<body class="body-wrapper">
	<?php include 'includes/navbar2.php'; ?>

		<!--============================
		=      Resultado da pesquisa    =
		=============================-->
<section class="section-sm">
	<div class="container">
		<div class="row">

			<div class="col-md-12 ">
				<div class="search-result bg-gray">
					<h2><?php echo " Aqui estão os resultados da categoria " . "<b>\"". $cat['name']. "\"</b>"; ?></h2>
				</div>
			</div>
		</div>

		<div class="row">
				<!--============================
				=      Filtros dos produtos    =
				=============================-->
				
				<?php include 'includes/sidebar2.php'; ?>


				<!--======================================
				= Filtros, visualizão, lista e paginação =
				=======================================-->
			<div class="col-md-9">

					<!--============================
					=       Lista de produtos      =
					=============================-->
				<div class="product-grid-list">
					<div class="row mt-30">

					<?php
		       			
		       			$conn = $pdo->open();

		       			try{
		       			 	$inc = 3;	
						    $stmt = $conn->prepare("SELECT * FROM products WHERE category_id = :catid");
						    $stmt->execute(['catid' => $catid]);
						    foreach ($stmt as $row) {
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 3) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
								   echo "
								   <div class='col-sm-12 col-lg-4 col-md-6'>
										<!-- product card -->
										<div class='product-item bg-light'>
											<div class='card'>
												<div class='thumb-content'>
													<div class='price'>AOA ".number_format($row['price'], 2)."</div>
													<img class='card-img-top img-fluid' src='".$image."' width='100%' height='100%'>
													</div>
												<div class='card-body'>
													<h4 class='card-title'><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h4>
													<ul class='list-inline product-meta'>
														<li class='list-inline-item'>
															<a href='single.html'><i class='fa fa-folder-open-o'></i>Electronics</a>
														</li>
														<li class='list-inline-item'>
															<a href='#'><i class='fa fa-calendar'></i>26th December</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
							   		</div>
								   ";
	       						if($inc == 3) echo "</div>";
						    }
						    if($inc == 1) echo "<div class='col-sm-4'></div><div class='col-sm-4'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-4'></div></div>";
						}
						catch(PDOException $e){
							echo "Ocorreu algum problema: " . $e->getMessage();
						}

						$pdo->close();

		       		?> 
					</div>
				</div>

					<!--============================
					=           Paginação          =
					=============================-->
				<div class="pagination justify-content-center">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Anterior</span>
								</a>
							</li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item active"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
									<span class="sr-only">Seguinte</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</section>
<!--============================
=            Footer            =
=============================-->

<?php include 'includes/footer2.php'; ?>

</body>

</html>