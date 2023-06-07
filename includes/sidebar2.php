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
					
					<div class="widget price-range w-100">
						<h4 class="widget-header">Faixa de preços</h4>
						<div class="block">
							<input class="range-track w-100" type="text" data-slider-min="1000" data-slider-max="5000000" data-slider-step="5" data-slider-value="[1000,5000]">
								<div class="d-flex justify-content-between mt-2">
									<span class="value">$1000 - $5000000</span>
								</div>
						</div>
					</div>
				</div>
			</div>