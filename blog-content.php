<?php
	views_update($_GET["id"]);
?> 
<?php
	$single = get_single_by_id($_GET['id']);
?> 
<?php 
	$categories_name = get_contegory_by_id($single["category_id"]);
?>
<?php 
	$authors_name = get_authors_by_id($single["author_id"]);
?>
<section class="page__blog page__bd">
	<div class="conteiner">
		<div class="page__blog_content">
			<div class="info__contigory">
				<?php echo $categories_name;?>
			</div>
			<div class="info__content_title">
				<?php echo $single["title"]?>
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
						<div class="info__footer_info-messeg icon-upload">
							<?php echo $single["comments"]?>	
						</div>
					</div>
				</div>
			</div>
			<div class="page__blog_info">
				<div class="page__img">
					<img src="<?php echo $single["img"]?>" alt="">
				</div>
				<div class="page__blog_info-text">
					<?php echo $single["text"]?>
				</div>
			</div>
		</div>
	</div>
</section>