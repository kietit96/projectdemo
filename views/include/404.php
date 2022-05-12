<meta http-equiv="refresh" content="5; url=<?= baseUrl ?>" />
<div class="col-md-12 text-center" style="position: relative;
top: 50%;
transform: translateY(-50%); text-align: center;">
	<h1><?= $_TRANS->notFoundText ?></h1>
	<p><?= $_TRANS->notFoundText2 ?> <a <?=linkMenu($menuHome)?> ><?= $menuHome->title ?></a> <?= $_TRANS->notFoundText3 ?></p>
	<p class="text-muted"><?= $_TRANS->notFoundText4 ?></p>
	<p>
		<a href="tel:<?=$infoPage->phone?>" class="btn btn-primary"><i class="fa fa-phone"></i> <?=$infoPage->phone?></a>
		<a href="mailto:<?=$infoPage->gmail?>" class="btn btn-danger"><i class="fa fa-envelope"></i> <?=$infoPage->gmail?></a>
	</p>
</div>