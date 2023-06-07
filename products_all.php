<?php include 'includes/session.php'; ?>
<?php include 'includes/header2.php'; ?>

<body class="body-wrapper">
	<?php include 'includes/navbar2.php'; ?>
	<?php include 'includes/search_bar.php'; ?>


<section class="section-sm">
	<div class="container">

		<div class="row">
				<!--============================
				=      Filtros dos produtos    =
				=============================-->
			<div class="col-md-3">
				<div class="category-sidebar">
					<div class="widget category-list">
						<h4 class="widget-header">Todas Categorias</h4>
						<ul class="category-list">
						<?php
							$conn = $pdo->open();
							try{
							$stmt = $conn->prepare("SELECT * FROM category");
							$stmt->execute();
							foreach($stmt as $row){
								echo "
								<li><a href='category.php?category=".$row['cat_slug']."'>".$row['name']." </a> </li>
								";                  
							}
							}
							catch(PDOException $e){
							echo "Ocorreu algum problema: " . $e->getMessage();
							}

							$pdo->close();
						?>
						</ul>
					</div>

					<div class="widget filter">
						<h4 class="widget-header">Mostrar produtos</h4>
						<select>
							<option selected disabled>Todos os produtos</option>
							<option value="1">Mais procurados</option>
							<option value="2">Mais baratos</option>
							<option value="3">Mais caros</option>
						</select>
					</div>
					
				</div>
			</div>

				<!--======================================
				= Filtros, visualizão, lista e paginação =
				=======================================-->
			<div class="col-md-9">
				
				<!--============================
				=     Filtros e visualizão     =
				=============================-->
				<div class="category-search-filter">
					<div class="row">
						<div class="col-md-6">
							<strong>Filtrar</strong>
							<select>
								<option selected disabled> Todas categorias</option>
								<?php
									$conn = $pdo->open();
									try{
									$stmt = $conn->prepare("SELECT * FROM category");
									$stmt->execute();
									foreach($stmt as $row){
										echo "
										<option value=".$row['cat_slug']."> 
											<a href='category.php?category=".$row['cat_slug']."'>".$row['name']."</a>
										</option>
										";
									}
									}
									catch(PDOException $e){
									echo "Ocorreu algum problema: " . $e->getMessage();
									}
									$pdo->close();
								?>
							</select>
						</div>
						<div class="col-md-6">
							<div class="view">
								<strong>Vizualização</strong>
								<ul class="list-inline view-switcher">
									<li class="list-inline-item">
										<a href="#" onclick="event.preventDefault();" class="text-info"><i class="fa fa-th-large"></i></a>
									</li>
									<li class="list-inline-item">
										<a href="ad-list-view.html"><i class="fa fa-reorder"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

					<!--============================
					=       Lista de produtos      =
					=============================-->
				<div class="product-grid-list">
					<div class="row mt-30">
					<?php
							$now = date('Y-m-d');
							$conn = $pdo->open();
							
							$stmt = $conn->prepare("SELECT * FROM products LIMIT 9");
							$stmt->execute(['now'=>$now]);
							foreach($stmt as $row){
								$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
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
													<a href='#'><i class='fa fa-folder-open-o'></i>Electronics</a>
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