<?php
$check = false;
$user = array();
if (isset($_COOKIE['email']) && isset($_COOKIE['password'])) {
    $email = $_COOKIE["email"];
    $password = $_COOKIE["password"];
    $user = $db->login($email, $password);
}
if (($user) && checkCookieUser($user, $email, $password)) {
    $check = true;
}
?>
<div class='container'>
    <div class="row">
        <div class="col-md-12">
            <div id="resultCart">
                <?php if (isset($_SESSION["cart"]) && $_SESSION["cart"] != '' && count((array) $cart->all()) != 0) { ?>
                    <form method="post" action="cart" class="contactAjax" baseUrl="<?= baseUrl ?>">
                        <div class="table-responsive">
                            <table class="table listCart">
                                <thead>
                                    <tr>
                                        <th>Hình</th>
                                        <th>Tiêu đề</th>
                                        <th>Giá</th>
                                        <th width="100px">Số lượng</th>
                                        <th>Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $total = 0;
                                    foreach ($cart->list as $key => $item) {
                                        $data = $db->alone_data_where('data', 'id', $item->id);
                                        $dataT = $db->alone_data_where_where("data_lang", "data_id", $data->id, "lang", $lang);
                                        if ($dataT->sale != '' || $dataT->sale != null) {
                                            $total += $dataT->sale * $item->count;
                                        } else {
                                            $total += $dataT->price * $item->$count;
                                        }
                                    ?>
                                        <tr class="dataCart">
                                            <td>
                                                <a <?= linkId($data, $menuParent->name); ?>>
                                                    <img class="img-responsive" style="height:50px;" <?php echo srcImg($data); ?> />
                                                </a>
                                            </td>
                                            <td><a <?= linkId($data, $menuParent->name); ?>><?= $dataT->title ?></a></td>
                                            <td width="100px" class="price">
                                                <?php if ($dataT->sale == '') {
                                                    echo checkLength($dataT->price);
                                                } else { ?>
                                                    <p><del><?php echo checkLength($dataT->price); ?></del></p>
                                                    <p><?php echo checkLength($dataT->sale); ?></p>
                                                <?php } ?>
                                            </td>
                                            <td width="70px">
                                                <input class="form-control count" type="number" onchange="changeValue(this.value,'<?= $key ?>')" value="<?= $item->count ?>" name="count[<?= $data->id ?>]" />
                                                <input type="hidden" value="<?= $data->id ?>" name="cart[<?= $data->id ?>]" />
                                            </td>
                                            <td width="50px">
                                                <button type="button" class="btn btn-danger btn-sm confirm" onclick="clearCartItem(<?= $key ?>);">
                                                    <i class="fa fa-trash"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    <?php
                                    } ?>
                                </tbody>
                            </table>
                            <h4>
                                <b id="total">Tổng: 50000</b>
                            </h4>
                            <hr>
                            <center>
                                <h3>ĐẶT HÀNG TRỰC TUYẾN</h3>
                            </center>
                            <p><b>Họ và tên:</b> <?= $infoPage->name; ?></p>
                            <p><b>Số điện thoại:</b> <?= $infoPage->phone; ?></p>
                            <p><b>Địa chỉ:</b> <?= $infoPage->address; ?></p>
                            <p><b>Số tài khoản ngân hàng:</b><br><?= $infoPage->bank; ?></p>
                            <hr>
                            <center>
                                <h3>GIAO HÀNG TẬN NƠI</h3>
                            </center>

                            <div class="form-group">
                                <input type="hidden" name="price" value="50000">
                                <label for="name">Tên của bạn:</label>
                                <input type="text" name="title" class="cookie form-control" value="<?= showCookieUser($user, $check, 'title'); ?>" placeholder="Nhập tên">
                            </div>
                            <div class="form-group">
                                <label for="mail">Số điện thoại:</label>
                                <input type="text" name="phone" class="cookie form-control" value="<?= showCookieUser($user, $check, 'phone'); ?>" placeholder="Nhập số điện thoại">
                            </div>
                            <div class="form-group">
                                <label for="mail">Email:</label>
                                <input type="text" name="email" class="cookie form-control" value="<?= showCookieUser($user, $check, 'email'); ?>" placeholder="Nhập Email">
                            </div>
                            <div class="form-group">
                                <label for="add">Địa chỉ:</label>
                                <input type="text" name="address" class="cookie form-control" value="<?= showCookieUser($user, $check, 'address'); ?>" placeholder="Nhập dịa chỉ">
                            </div>
                            <div class="form-group">
                                <label for="content">Tin nhắn:</label>
                                <textarea type="text" name="content" class="form-control" rows="4" placeholder="Nhập nội dung tin nhắn"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="payment">Payment</label>
                                <input type="radio" name="payment" value="1" class="form-control">
                            </div>
                            <div class="form-group">
                                <!-- button type="submit" class="btn btn-success form-control">
                                    <i class="fa fa-shopping-cart"></i> Mua hàng
                                </button> -->
                                <form id="frmCreateOrder" action="https://sandbox.vnpayment.vn/button/websrc.html" method="POST" target="_top"> <input type="hidden" name="cmd" value="pay"> <input type="hidden" name="hosted_button_id" value="aAeIH3bHV0"> <input type="hidden" name="hosted_button_token" value="442c4443cec15966dacf9d6efef31369a4cbf106db0f0f0eb42ca36f38abfa17"> <img alt="VNPAY - Thanh toan online" border="0" class="btnPopup" src="https://sandbox.vnpayment.vn/button/Images/paynow-1.png"> </form>
                                <script src="https://merchant.vnpay.vn/Scripts/jquery-2.1.4.min.js"></script>
                                <link href="https://merchant.vnpay.vn/Scripts/lib/vnpayframe.css" rel="stylesheet" />
                                <script src="https://merchant.vnpay.vn/Scripts/lib/vnpayframe.js"></script>
                                <script src="https://merchant.vnpay.vn/Scripts/lib/openbutton.js"></script>
                            </div>
                        </div>
                    </form>
                <?php } else {
                    $menuP = $db->alone_data_where('menu', 'file', 'product'); ?>
                    <h5><b>Bạn chưa chọn sản phẩm</b> - <a <?= linkMenu($menuP); ?>>Xem sản phẩm</a></h5>
                <?php } ?>
            </div>
        </div>
    </div>
</div>