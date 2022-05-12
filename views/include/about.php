<section id="about">
	<?php $menuT = $db->alone_data_where_where("menu_lang", "menu_id", $menuPage->id, "lang", $lang); ?>
	<div class="container">
		<div class="row">
			<div class="about col-12">
				<?php echo $menuT->content ?>
			</div>
		</div>
	</div>
</section>