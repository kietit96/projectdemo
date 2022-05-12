<?php if (isset($id)) : ?>
    <?php $pageT = $db->alone_data_where_where('data_lang', 'data_id', $id, 'lang', $lang); ?>
    <?php include 'newsdetail.php'?>
<?php else : ?>
    <?php
    if (!isset($idList)) {
        $idList = $menuPage->id;
        $page = $menuPage;
    }
    $listData = $db->allListDataChild($idList, $start, $config->limit);
    $listMenuChild = $db->listMenuChild($idList);
    $allListData = $db->countAllListDataChild($idList);
    $menuT = $db->alone_data_where_where("menu_lang", "menu_id", $idList, "lang", $lang);
    ?>
    <section id="recruit" style="margin-bottom:0px">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3 class="title-uppercase" style="margin: 35px 0px;"><?php echo $menuT->title ?></h3>
                </div>
                <div class="duan col-12">
                    <div class="list">
                        <ul>
                            <li><a class="<?php echo returnWhere("active", $idList, $menuPage->id) ?>" data_menu="<?php echo $menuPage->id?>">Tất cả</a></li>
                            <?php $listMenuChild = $db->listMenuChild($menuPage->id);
                            foreach ($listMenuChild as $key => $menuChild) {
                                $menuT = $db->alone_data_where_where("menu_lang", "menu_id", $menuChild->id, "lang", $lang);
                            ?>
                                <li><a data_menu="<?php echo $menuChild->id?>"><?php echo $menuT->title ?></a></li>
                            <?php
                            } ?>
                        </ul>
                    </div>
                    <div class="row justify-content-center" id="duan-content">
                        <?php $listData = $db->allListDataChild($idList, null, null, 'pos', 'asc');
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
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php endif ?>