<div class="product-loop project col-md-4 col-sm-6 col-xs-12 ng-scope" >
	<a  <?php echo linkId($data,$idList) ?> target="_blank" class="ng-scope">
		<img <?php echo srcImg($data) ?>>
		<div class="title-project">
			<h2 class="name ng-binding"><?php echo $dataTitle->title ?></h2>
		</div>
		<div class="info">
			<ul>
				<?php 
                    $listFilter = explode(',',$data->filter);
                    $filterMenu = $db->alone_data_where("menu","file","filter");
                    $listMenuChildFilter = $db->listMenuChild($filterMenu->id);
                    foreach ($listMenuChildFilter as $menuFilter):
                    	$listDataFilter = $db->listData($menuFilter->id); 
                ?>
                    <?php 
                        $value = [];
                        foreach ($listDataFilter as $key => $data) {
                            foreach ($listFilter as $key => $fl) {
                                if ($fl == $data->id) {
                                    $cfl = $db->alone_data_where('menu','id',$data->menu);
                                    $value[] = $cfl->id;
                                    $value = array_unique($value);
                                }
                            }
                        }
                    ?>
                    <?php foreach ($value as $key => $vl): ?>
                    	<?php if ($vl == $menuFilter->id): ?>
                            <?php $menuFilterL = $db->alone_data_where_where('menu_lang','menu_id',$menuFilter->id,'lang',$lang); ?>
							<li class="ng-binding">
								<span><?= $menuFilterL->title ?>:</span>
								<?php foreach ($listDataFilter as $dataFilter):
                                    $dataFilterL = $db->alone_data_where_where('data_lang','data_id',$dataFilter->id,'lang',$lang);
                                    foreach ($listFilter as $key => $data1) {
                                        if($data1==$dataFilter->id){ ?>
                                            <?= $dataFilterL->title ?> ;
                                        <?php }
                                    } ?>
                                <?php endforeach ?>
							</li>
							<div class="clearfix"></div>
					<?php endif; endforeach; ?>
        		<?php endforeach ?>
			</ul>
		</div>
	</a>
	<!-- end ngIf: realEstate.category[0].slug == 'vincom-shophouse' -->
</div>
<!-- end ngRepeat: realEstate in realEstates track by $index -->