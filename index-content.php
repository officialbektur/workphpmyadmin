<section class="page__bd">
	<div class="conteiner">
		<div class="page__row">
			<?php
				$singles = get_singles_all();
				foreach ($singles as $single):
			?>
			<?php 
				$categories_name = get_contegory_by_id($single["category_id"]);
			?>
			<?php 
				$authors_name = get_authors_by_id($single["author_id"]);
			?>
			<!--------------------  BLOCK  --Start--  -------------------->
			<div class="page__column">
				<a href="blog.php?id=<?php echo $single["id"]?>" class="page__img">
					<img src="<?php echo $single["img"]?>" alt="img">
				</a>
				<div class="page__info">
					<div class="info__contegory">
						<?php echo $categories_name;?>
					</div>
					<div class="info__content">
						<a href="blog.php?id=<?php echo $single["id"]?>" class="info__content_title">
							<?php echo $single["title"]?>
						</a>
						<p class="info__content_text">
							<?php echo $stringminimaltext = substr($single["text"], 0, 500)?>
						</p>
					</div>
					<div class="info__footer">
						<div class="info__footer_column">
							<div class="info__footer_info">
								<div class="info__footer_author icon-upload">
									<?php echo $authors_name;?>
								</div>
								<div class="info__footer_date icon-upload">
									<?php echo date("d.m.Y в H:i", strtotime($single["data"])); ?>
								</div>
							</div>
						</div>
						<div class="info__footer_column">
							<div class="info__footer_info">
								<div class="info__footer_info-eigh icon-upload">
									<?php echo $single["views"]?>
								</div>
								<div class="info__footer_info-comments icon-upload">
									<?php echo $single["comments"]?>	
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--------------------  BLOCK  --End--  -------------------->
			<?php
				endforeach;
			?>
		</div>
	</div>
</section>
