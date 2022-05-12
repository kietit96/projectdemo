<style type="text/css" media="screen">
	.row {
		margin-right: 0;
		margin-left: 0;
	}
</style>
<div class="content ng-scope" style="display: block; margin-top: 86px;" ng-app="myApp" ng-controller="realController">
	<!------------------------- Breadcrumb content ------------------------------>
	<div class="container header-content">
		<!--  <h2>Bất động sản nhà ở</h2>
			<div class="breadcrumb">Trang chủ / Bđs nhà ở</div>-->
	</div>
	<!----------------------- End breadcrumb ------------------------------>
	<!-------------------- Search ------------------------>
	<div id="search-bds" class="full" ng-init="hideContent=false">
		<div class="container">
			<div class="row">
				<!-- ngIf: !searchOptions.current_category -->
				<h1 class="title-section center ng-scope" ng-if="!searchOptions.current_category"><?php echo $_TRANS->tetx34; ?></h1>
				<!-- end ngIf: !searchOptions.current_category -->
				<!-- ngIf: searchOptions.current_category -->
				<p><?php echo $_TRANS->text39; ?> <span class="ng-binding"><?php echo $infoPage->title ?></span> <?php echo $_TRANS->tetx36; ?></p>
				<div class="filter full">
					<?php
					if (isset($_GET['menu'])) {
						$idMenu = $_GET['menu'];
					}
					?>
					<div class="col-md-12" style="margin-bottom: 20px">
						<form class="searchAjax">
							<div class="" style="margin-bottom: 20px">
								<input type="type" name="title" style="height: 52px;" data-period="2000" data-type="[ &quot;Vinhomes Imperia&quot;, &quot;Vinhomes Riverside - The Harmony&quot;, &quot;Vincom Shophouse Cà Mau&quot; ]" placeholder="Vinhomes Ri|" ng-model="searchOptions.realName" class="form-control typewrite ng-pristine ng-valid ng-empty ng-touched" value="">
							</div>
						</form>
					</div>
					<form class="bds searchAjax" action="">
						<?php
						$filter1 = $_GET['filter1'];
						$filter2 = $_GET['filter2'];
						$filter3 = $_GET['filter3'];
						$filter4 = $_GET['filter4'];

						$listMenuFilter = $db->listMenuChild($menuFilter->id);
						foreach ($listMenuFilter as $key => $menuFilterChild) {
							$menuFilterChildTitle = $db->alone_data_where_where('menu_lang', 'menu_id', $menuFilterChild->id, 'lang', $lang);
						?>
							<div class="col-md-3 filter-item col-xs-12 col-sm-6">
								<select name="filter<?= $key + 1 ?>" id="province" placeholder="<?php echo $menuFilterChildTitle->title; ?>" class="ng-pristine ng-valid ng-empty ng-touched">
									<option value="">
										<?php echo $menuFilterChildTitle->title; ?>
									</option>
									<?php $listData = $db->allListDataChild($menuFilterChild->id) ?>
									<?php foreach ($listData as $key => $data) : ?>
										<?php $dataTitle = $db->alone_data_where_where('data_lang', 'data_id', $data->id, 'lang', $lang); ?>
										<option class="ng-binding ng-scope" <?php if ($data->id == $filter1 || $data->id == $filter2 || $data->id == $filter3 || $data->id == $filter4) {
																				echo 'selected';
																			} ?> value="<?php echo $data->id ?>"><?php echo $dataTitle->title ?></option>
									<?php endforeach ?>
								</select>
							</div>
						<?php } ?>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="main-content full">
		<div class="container">
			<div class="row">
				<div class="full" id="list-project">
					<?php
					if (isset($_GET['menu'])) {
						$idMenu = $_GET['menu'];
					} ?>
					<?php include('modules/search.php');  ?>
					<p ng-show="!hideTip &amp;&amp; hideContent" class="ng-hide"><?php echo $_TRANS->text40; ?> <span class="ng-binding"><?php echo count($listData) ?></span> <?php echo $_TRANS->text41; ?>
					</p>
					<?php
					if (count($listData)) {
						if (count($listData)) {
							foreach ($listData as $key => $dataT) {
								$data = $db->alone_data_where('data', 'id', $dataT->data_id);
								include('productList2.php');
							}
						}
					}
					?>
				</div>

			</div>
		</div>
	</div>
	<!---------------- End list project ------------------>
</div>