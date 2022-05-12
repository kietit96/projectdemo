<?php
include_once '../../../config.php';
include_once '../../../modules/sql.php';
include_once '../../../modules/control.php';

$data_id = $_GET['data_id'];
if (isset($_GET['data_menu'])) {
    $listData = $db->allListDataChildHot($menuProduct->id, null, null, 'pos', 'asc');
} else {
    $listData = $db->allListDataChildHot($menuProduct->id, null, null, 'pos', 'asc', 'filter', '%' . $data_id . '%', 'like');
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
        </div>
    </div>
<?php } ?>