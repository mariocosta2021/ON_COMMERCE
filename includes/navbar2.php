<section>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-expand-lg navbar-light navigation">
					<a class="navbar-brand" href="index.php">
						<img src="classimax/images/logo.png" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto main-nav ">
							<li class="nav-item"><a class="nav-link" href="index.php">Página Inicial</a></li>
							<li class="nav-item"><a class="nav-link" href="products_all.php">Produtos</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Sobre nós</a></li>
							<li class="nav-item"><a class="nav-link" id="msg" href="#">Contactos</a></li>
						</ul>

						<ul class="navbar-nav ml-auto main-nav">
							<li class="nav-item dropdown dropdown-slide user user-menu">
								<a class="nav-link" href="cart_view.php">
									<span class="text-sucess"><i class="fa fa-shopping-cart" ></i></span>
								</a>
							</li>
							<?php
								if(isset($_SESSION['user'])){
								$image = (!empty($user['photo'])) ? 'images/'.$user['photo'] : 'images/profile.jpg';
								echo '
									<li class="nav-item dropdown dropdown-slide user user-menu">
										<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="">
											<span class="text-sucess">'.$user['firstname'].' '.$user['lastname'].'</span>
											<span><i class="fa fa-angle-down"></i></span>
										</a>
										<div class="dropdown-menu">
											<a class="dropdown-item my-2 py2 " href="profile.php">Ver perfil <span>
												<i class="fa fa-eye"></i></span>
											</a>
											<a class="dropdown-item text-danger" href="logout.php">Terminar sessão <span>
												<i class="fa fa-power-off"></i></span>
											</a>
										</div>

									</li>
								';
								}
								else{
								echo "
								<li class='nav-item'><a class='nav-link login-button' href='login.php'>Iniciar sessão</a></li>
								<li class='nav-item'><a class='nav-link text-white add-button' href='signup.php'> Criar conta</a></li>
								";
								}
							?>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</section>