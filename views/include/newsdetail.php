<section id="detail-news">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="detail-content">
                    <h4><?php echo $pageT->title ?></h4>
                    <?php echo $pageT->content ?>
                </div>
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