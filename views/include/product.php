<?php if (isset($id)) : ?>
	<?php $pageT = $db->alone_data_where_where("data_lang", "data_id", $id, "lang", $lang); ?>
	<section id="detail-duan" style="margin-bottom:0px">
		<div class="title">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h2><?php echo $pageT->title; ?><h2>
					</div>
				</div>
			</div>
			<div class="list_tab_container">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<ul class="list_tab">
								<?php $listTab = $db->list_data_where_where("tabs", "data_id", $pageT->id, "lang", $lang);
								foreach ($listTab as $key => $tab) { ?>
									<li><a class="<?php echo returnWhere('active', $key, 0); ?>" href="#<?php echo $tab->id ?>"><?php echo $tab->title ?></a></li>
								<?php } ?>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<?php foreach ($listTab as $key => $tab) { ?>
						<article class="detail-content" id="<?php echo $tab->id ?>">
							<h4><?php echo $tab->title ?></h4>
							<?php echo $tab->content ?>
						</article>
					<?php } ?>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="detail-content listItem">
						<div class="col-12">
							<h4 style="margin-bottom:15px">Bài viết liên quan</h4>
						</div>
						<div class="slide-related owl-carousel owl-theme">
							<?php $listData = $db->allListDataChild($page->menu);
							foreach ($listData as $key => $data) {
								$dataT = $db->alone_data_where_where("data_lang", "data_id", $data->id, "lang", $lang);
							?>
								<div class="col-12">
									<div class="item">
										<div class="img">
											<a <?php echo linkId($data, $menuNews->name) ?>><img <?php echo srcImg($data) ?>></a>
										</div>
										<div class="title">
											<h6><a <?php echo linkId($data, $menuNews->name) ?>><?php echo $dataT->title ?></a></h6>
											<time><?php echo $data->time ?></time>
										</div>
										<div class="content">
										</div>
									</div>
								</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<?php else : ?>
	<?php if (!isset($idList)) {
		$idList = $menuPage->id;
		$page = $menuPage;
	}
	$menuT = $db->alone_data_where_where("menu_lang", "menu_id", $idList, "lang", $lang);
	$filter = $_GET['f'];
	echo $menuT->content
	?>
	
	<section id="duan">
		<?php $menuT = $db->alone_data_where_where("menu_lang", "menu_id", $menuProduct->id, "lang", $lang); ?>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h3 class="title-uppercase" style="margin: 35px 0px;">Thông tin <?php echo $menuT->title ?></h3>
				</div>
				<div class="duan col-12">
					<div class="list">
						<ul>
							<li><a <?php if (!isset($_GET['f'])) { ?>class="<?php echo returnWhere("active", $idList, $menuPage->id) ?>" <?php } ?> href="#" data_menu="all" data_id="<?php echo $menuProduct->id ?>">Tất cả</a></li>
							<?php $listData = $db->allListDataChild($menuFilter->id, null, null, 'pos', 'asc');
							foreach ($listData as $key => $data) {
								$clistData = $db->allListDataChild($menuProduct->id, null, null, 'pos', 'asc', 'filter', '%' . $data->id . '%', 'like');
								if (count($clistData) > 0) {
									$dataT = $db->alone_data_where_where("data_lang", "data_id", $data->id, "lang", $lang);
							?>
									<li><a class="<?php echo returnWhere("active", $data->id, $filter) ?>" href="#" data_id="<?php echo $data->id ?>"><?php echo $dataT->title ?></a></li>
							<?php }
							} ?>
						</ul>
					</div>
					<div class="row justify-content-center" id="duan-content">
						<?php
						if (isset($_GET['f']) && $_GET['f'] != '') {
							$listData = $db->allListDataChild($menuProduct->id, null, null, 'pos', 'asc', 'filter', '%' . $filter . '%', 'like');
						} else {
							$listData = $db->allListDataChild($menuProduct->id, null, null, 'pos', 'asc', 'hot', 1);
						}
						foreach ($listData as $key => $data) {
							$dataT = $db->alone_data_where_where("data_lang", "data_id", $data->id, "lang", $lang);
						?>
							<div class="col-md-4 col-12">
								<div class="item">
									<div class="img">
										<a <?php echo linkId($data, $menuNews->name) ?>><img <?php echo srcImg($data) ?>></a>
									</div>
									<div class="title">
										<h6><a <?php echo linkId($data, $menuNews->name) ?>><?php echo $dataT->title ?></a></h6>
									</div>
									<div class="content">
									</div>
								</div>
							</div>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	</section>
<?php endif ?>