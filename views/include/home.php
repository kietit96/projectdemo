<section id="slideHome">
    <div class="owl-carousel owl-theme">
        <?php $listSlide = $db->list_data_where_where_order("file_data_lang", "file_data_id", $menuHome->id, "type", "slide", "pos", 'asc');
        foreach ($listSlide as $key => $slide) { ?>
            <div class="items">
                <div class="img">
                    <img style="height: 100%;" <?php echo srcImg($slide) ?>>
                </div>
                <div class="content">
                    <h2><?php echo $slide->title ?></h2>
                    <p style="text-align: center;color: #fff;font-size: 1.3em;"><?php echo $slide->des ?></p>
                    <div class="detail">
                        <a href="<?php echo $slide->link ?>">Xem thêm</a>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</section>
<section id="home-about">
    <?php $menuT = $db->alone_data_where_where('menu_lang', "menu_id", $menuContent->id, "lang", $lang); ?>
    <div class="container">
        <div class="row justify-content-center">
            <h3 class="title-uppercase"><?php echo $menuT->title ?></h3>
        </div>
        <div class="row">
            <div class="col-md-6 col-12">
                <div id="slide-about" class="owl-carousel owl-theme">
                    <?php $listSlide = $db->list_data_where_where("file_data_lang", "file_data_id", $menuT->id, "type", "slide");
                    foreach ($listSlide as $key => $slide) { ?>
                        <div class="slide">
                            <img <?php echo srcImg($slide) ?>>
                        </div>
                    <?php } ?>
                </div>
            </div>
            <div class="col-md-6 col-12">
                <div class='content'>
                    <?php echo $menuT->f1 ?>
                </div>
            </div>
            <div class="col-12">
                <div class="detail">
                    <a <?php echo linkMenu($menuContent) ?>>Xem thêm</a>
                </div>
            </div>
        </div>
    </div>
</section>
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
                        <li><a class="active" href="#" data_menu="all" data_id="<?php echo $menuProduct->id ?>">Tất cả</a></li>
                        <?php $listData = $db->allListDataChild($menuFilter->id, null, null, 'pos', 'asc');
                        foreach ($listData as $key => $data) {
                            $clistData = $db->allListDataChildHot($menuProduct->id, null, null, 'pos', 'asc', 'filter', '%' . $data->id . '%', 'like');
                            if (count($clistData) > 0) {
                                $dataT = $db->alone_data_where_where("data_lang", "data_id", $data->id, "lang", $lang);
                        ?>
                                <li><a href="#" data_id="<?php echo $data->id ?>"><?php echo $dataT->title ?></a></li>
                        <?php }
                        } ?>
                    </ul>
                </div>
                <div class="row justify-content-center" id="duan-content">
                    <?php $listData = $db->allListDataChild($menuProduct->id, null, null, 'pos', 'asc', 'hot', 1);
                    foreach ($listData as $key => $data) {
                        $dataT = $db->alone_data_where_where("data_lang", "data_id", $data->id, "lang", $lang);
                    ?>
                        <div class="col-md-4 col-12">
                            <div class="item">
                                <div class="img">
                                    <a <?php echo linkId($data, $menuProduct->name) ?>><img <?php echo srcImg($data) ?>></a>
                                </div>
                                <div class="title">
                                    <h6><a <?php echo linkId($data, $menuProduct->name) ?>><?php echo $dataT->title ?></a></h6>
                                </div>
                                <div class="content">
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
            <div class="col-12">
                <div class="detail">
                    <a <?php echo linkMenu($menuProduct) ?>>Xem thêm</a>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="camket">
    <div class="container">
        <div class="row">
            <?php $listData = $db->allListDataChild($menuContent->id);
            foreach ($listData as $key => $data) {
                $dataT = $db->alone_data_where_where("data_lang", "data_id", $data->id, "lang", $lang);
            ?>
                <div class="col-md-4 col-12">
                    <div class="item">
                        <div class="img">
                            <div class="circle">
                                <img <?php echo srcImg($data) ?>>
                            </div>
                        </div>
                        <div class="content">
                            <h4><?php echo $dataT->title ?></h4>
                            <?php echo $dataT->content ?>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</section>
<section id="home-khachhang" class="khachhang">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h3 class="title-uppercase">Khách hàng đánh giá</h3>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="owl-carousel owl-theme">
                <?php
                $listData = $db->allListDataChild($menuDatnen->id);
                foreach ($listData as $key => $data) {
                    $dataT = $db->alone_data_where_where("data_lang", 'data_id', $data->id, "lang", $lang);
                ?>
                    <div class="service-review">
                        <div class="service-review-img">
                            <img <?php echo srcImg($data) ?> class="img-circle img-responsive custom-circle">
                        </div>
                        <div class="service-review-content">
                            <p class="text-bold title"><?php echo $dataT->title ?></p>
                            <?php echo $dataT->content ?>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</section>
<section id="doitac">
    <div class="container">
        <div class="row justify-content-center">
            <h3 class="title-uppercase">Đối tác</h3>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="owl-carousel owl-theme">
                    <?php $listSlide = $db->list_data_where_where("file_data_lang", "file_data_id", $menuHome->id, "type", "doitac");
                    foreach ($listSlide as $key => $slide) {
                    ?>
                        <div class="col-12 item">
                            <img <?php echo srcImg($slide) ?>>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="news" class="news">
    <?php $menuT = $db->alone_data_where_where("menu_lang", "menu_id", $menuNews->id, "lang", $lang); ?>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h3 class="title-uppercase"><?php echo $menuT->title ?></h3>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="owl-carousel owl-theme">
                <?php $listData = $db->allListDataChild($menuNews->id, 0, 3, 'pos', 'asc', 'hot', 1);
                foreach ($listData as $key => $data) {
                    $dataT = $db->alone_data_where_where("data_lang", "data_id", $data->id, "lang", $lang);
                ?>
                    <div class="box col-12">
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
            <div class="col-12">
                <div class="detail">
                    <a <?php echo linkMenu($menuNews) ?>>Xem thêm</a>
                </div>
            </div>
        </div>
    </div>
</section>
<style type="text/css">
    #navbar {
        background: rgba(255, 255, 255, 0);
        transition: 0.5s all ease;
    }
</style>
<script type="text/javascript">
    $(document).ready(function() {
        $(".navbar-nav .menu-child").addClass('importantwhite');
        $(window).scroll(function() {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > $("#navbar").position().top) {
                $("#navbar").css({
                    'background': '#C69B2B'
                });
                $(".navbar-nav .menu-child").removeClass('importantwhite');
            } else {
                $("#navbar").css({
                    'background': 'rgba(255, 255, 255, 0)'
                })
                $(".navbar-nav .menu-child").addClass('importantwhite');
            }
        })
    })
</script>