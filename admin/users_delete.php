<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$id = $_POST['id'];
		
		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("DELETE FROM users WHERE id=:id");
			$stmt->execute(['id'=>$id]);

			$_SESSION['success'] = 'Usuário deletado com sucesso!';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}

		$pdo->close();
	}
	else{
		$_SESSION['error'] = 'Selecione o usuário';
	}

	header('location: users.php');
	
?>