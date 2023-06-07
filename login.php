<?php include 'includes/session.php'; ?>
<?php include 'includes/header2.php'; ?>




<body class="body-wrapper">
	<?php include 'includes/navbar2.php'; ?>



<section class="login py-5 border-top-1">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 align-item-center">
                <div class="border">
					<?php
						if(isset($_SESSION['error'])){
							echo "
							<div class='callout callout-danger text-center'>
								<h3 class='text-danger'>".$_SESSION['error']."</h3> 
							</div>
							";
							unset($_SESSION['error']);
						}
						if(isset($_SESSION['success'])){
							echo "
							<div class='callout callout-success text-center'>
								<h3>".$_SESSION['success']."</h3> 
							</div>
							";
							unset($_SESSION['success']);
						}
					?>
					<div class="login-box-body">
						<h3 class="bg-gray p-4 font-weight-bold">Iniciar Sessão</h3>
						<h3>
							<?php
								if (isset($_GET["msg"])) {
								# code...
								echo $_GET["msg"];
								}
							?>
						</h3>
                    					
                    <form action="verify.php" method="POST">
                        <fieldset class="p-4">
                            <input type="text" placeholder="Username" class="border p-3 w-100 my-2" name="email" required>
                            <input type="password" placeholder="Senha" class="border p-3 w-100 my-2" name="password" required>
                            <button type="submit" class="d-block my-2 py-3 px-5 bg-primary text-white border-0 rounded font-weight-bold" name="login">Iniciar Sessão</button>
                           <p>Não tem uma conta? <a class="mt-3 d-inline-block text-primary" href="signup2.php">Criar Conta</a></p>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>


<?php include 'includes/footer2.php'; ?>

</body>

</html>
