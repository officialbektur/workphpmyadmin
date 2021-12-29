<header class="header">
	<div class="conteiner">
		<div class="header__body">
			<ul>
				<?php
					$singles = get_singles_all();
					foreach ($singles as $single) {
				?>
				<?php 
					$categories_name = get_contegory_by_id($single["category_id"]);
				?>
				<li><a href="blog.php?id=<?php echo $single["id"]?>"><?php echo $categories_name;?></a></li>
				<?php 
					}
				?>
			</ul>
		</div>
	</div>
</header>