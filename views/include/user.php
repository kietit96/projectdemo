<link rel="stylesheet" type="text/css" href="views/template/css/style.css">
<?php
if(isset($user)){
  $listF = array(
    array('title'=>'Email','name'=>'email','type'=>'text','change'=>0),
    array('title'=>'Mật khẩu','name'=>'password','type'=>'password'),
    array('title'=>'Tên','name'=>'title','type'=>'text'),
    array('title'=>'Điện thoại','name'=>'phone','type'=>'text'),
    );
  $listF = convertToObject($listF);
?>
<div class="contentAjax">
    <main class="homepage">
        <div class="header_product" style="padding-top: 100px;">
            <div class="tabs">
                <div class="container-fuild">
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <ul class="tab-buttons">
                            <li class="">
                                <div data-tab-index="0" class="tab-item active"><?php echo $_TRANS->text87; ?></div>
                            </li>
                            <li class="-mb-px">
                                <div data-tab-index="2" class="tab-item"><?php echo $_TRANS->text88; ?></div>
                            </li>
                            <li class="">
                                <div data-tab-index="3" class="tab-item"><?php echo $_TRANS->text89; ?></div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-8 col-md-9">
                        <ul class="tab-contents">
                            <li data-tab-content-index="0">
                                <div class="wrap-box-tab">
                                    <h3 class="title_account"><?php echo $_TRANS->text87; ?></h3>
                                    <section class="account-content">
                                        <p>
                                            <?php echo $_TRANS->text90; ?>
                                        </p>
                                    </section>
                                    <div class="">
                                      <div class="col-md-12">
                                        <div class="table">
                                          <table class="col-md-12 text-center">
                                            <thead>
                                              <tr>
                                                <th style="text-align: center;"><?php echo $_TRANS->text91; ?></th>
                                                <th style="text-align: center;"><?php echo $_TRANS->text55; ?></th>
                                                <th style="text-align: center;"><?php echo $_TRANS->text67; ?></th>
                                                <th style="text-align: center;">Voucher</th>
                                                <th style="text-align: center;"><?php echo $_TRANS->text68; ?></th>
                                                <th style="text-align: center;"><?php echo $_TRANS->text92; ?></th>
                                                <th style="text-align: center;"><?php echo $_TRANS->text93; ?></th>
                                                <th style="text-align: center;"><?php echo $_TRANS->text94; ?></th>
                                              </tr>
                                            </thead>
                                            <tbody>
                                              <?php 
                                                $listShop = $db->list_data_where_where('data','menu',$menuShop->id,'user',$user->id);
                                                foreach ($listShop as $key => $shop) {
                                              ?>
                                                <tr style="border-bottom: 1px solid #ccc;">
                                                  <td style="border-right: 1px solid #ccc;">#<?php echo $shop->id; ?></td>
                                                  <td style="border-right: 1px solid #ccc;">
                                                    <?php 
                                                      $cartData = $db->alone_data_where('data','id',$shop->id);
                                                      $listData = $db->listDataChild($shop->id);
                                                      $sessionCart = json_decode(base64_decode($cartData->session));
                                                      foreach ($sessionCart->list as $key => $cart) {
                                                        $spTitle = $db->alone_data_where('data_lang','data_id',$cart->id,'lang',$lang);
                                                    ?>
                                                      <p>
                                                        <strong><?php echo $spTitle->title; ?></strong>
                                                      </p>
                                                      <p>
                                                        <?php foreach ($cart->option as $optionName => $option): ?>
                                                           <strong><?= $optionName ?>:</strong> <?= $option ?>
                                                       <?php endforeach ?>
                                                     </p>
                                                      <p>
                                                        <strong><?php echo $_TRANS->text39; ?>: </strong> <?php echo $cart->count; ?>
                                                      </p>
                                                      <p>
                                                        <?php 
                                                          if ($spTitle->sale != '' && $spTitle->sale != 0) {
                                                           echo checkLength($spTitle->sale,'Liên hệ');
                                                           echo " - <del>";
                                                           echo checkLength($spTitle->price,'Liên hệ');
                                                           echo "</del>";
                                                          }else {
                                                            echo checkLength($spTitle->price,'Liên hệ');
                                                          }
                                                        ?>
                                                      </p>  
                                                    <?php } ?>
                                                  </td>
                                                  <td style="border-right: 1px solid #ccc;">
                                                    <?php 
                                                      $ship = $db->alone_data_where('province','id',$shop->province);
                                                      echo checkLength($ship->ship);
                                                    ?>
                                                  </td>   
                                                  <td style="border-right: 1px solid #ccc;">
                                                    <?php if ($cartData->sale_code != ''): ?>
                                                      <?php echo $cartData->sale_code . ' %'; ?>
                                                    <?php endif ?>
                                                  </td>
                                                  <td style="border-right: 1px solid #ccc;">
                                                    <?php 
                                                      if ($cartData->sale_code != '') {
                                                        $total = ($cartData->price*(100-$cartData->sale_code))/100;
                                                        echo checkLength($total + $ship->ship);
                                                        echo " <del>";
                                                        echo checkLength($cartData->price + $ship->shi);
                                                        echo "<del>";
                                                      }else {
                                                        echo checkLength($cartData->price + $ship->ship);
                                                      }
                                                    ?>
                                                  </td>
                                                  <td style="border-right: 1px solid #ccc;">
                                                    <?php 
                                                      if ($shop->f2 == 1) {
                                                        echo $_TRANS->text95;;
                                                      }elseif ($shop->f2 == 2) {
                                                        echo $_TRANS->text96;
                                                      }elseif ($shop->f2 == 3){
                                                        echo $_TRANS->text97;
                                                      }elseif ($shop->f2 == 4){
                                                        echo $_TRANS->text98;
                                                      }
                                                    ?>
                                                  </td>
                                                  <td style="border-right: 1px solid #ccc;">
                                                    <?php echo $shop->f1; ?>
                                                  </td>
                                                  <td>
                                                    <?php if ($shop->f2 > 1): ?>
                                                      <?php echo $_TRANS->text99; ?>
                                                    <?php else: ?>
                                                      <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal<?=$shop->id?>"><?php echo $_TRANS->text100; ?></button>
                                                      <!-- Modal -->
                                                      <div class="modal fade" id="myModal<?=$shop->id?>" role="dialog">
                                                        <div class="modal-dialog">
                                                        
                                                          <!-- Modal content-->
                                                          <div class="modal-content">
                                                            <form class="contactAjax" action="updateCart" method="post" >
                                                              <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                <h4 class="modal-title">
                                                                  <?php echo $_TRANS->text101; ?> #<?php echo $shop->id; ?>
                                                                </h4>
                                                              </div>
                                                              <!-- <div class="modal-body"> -->
                                                                <input type="hidden" name="id" value="<?php echo $shop->id ?>">
                                                              <!-- </div> -->
                                                              <div class="modal-footer">
                                                                <button type="Submit" class="btn btn-default" style="color: #000"><?php echo $_TRANS->text102; ?></button>
                                                              </div>
                                                            </form>
                                                          </div>
                                                          
                                                        </div>
                                                      </div>
                                                    <?php endif ?>
                                                  </td>
                                                </tr>
                                              <?php } ?>
                                            </tbody>
                                          </table>
                                        </div>
                                      </div>
                                    </div>
                                </div>
                            </li>
                            <li class="hidden" data-tab-content-index="2">
                                <div class="wrap-box-tab">
                                    <h3 class="title_account"><?php echo $_TRANS->text88; ?></h3>
                                    <section class="account-content">
                                        <p>
                                            <?php echo $_TRANS->text103; ?>
                                        </p>
                                    </section>
                                    <form enctype="multipart/form-data" method="post" class="contactAjax" action="changeInfo">
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <div class="form__group field">
                                                    <input type="hidden" name="id" value="<?php echo $user->id; ?>">
                                                    <input type="input" class="form__field" placeholder="<?php echo $_TRANS->text51; ?>" name="title" id='title' required value="<?php echo $user->title; ?>" />
                                                    <label for="title" class="form__label"><?php echo $_TRANS->text51; ?></label>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <div class="form__group field">
                                                    <input type="input" class="form__field" placeholder="<?php echo $_TRANS->text52; ?>" name="titlePost" id='titlePost' required value="<?php echo $user->titlePost; ?>" />
                                                    <label for="titlePost" class="form__label"><?php echo $_TRANS->text52; ?></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <div class="form__group field">
                                                    <select class="form__field" name="province">
                                                        <?php 
                                                            $listProvince = $db->list_data('province');
                                                            foreach ($listProvince as $key => $province) {
                                                        ?>
                                                            <option <?php if($province->id == $user->province){ echo "selected"; } ?> value="<?php echo $province->id; ?>">
                                                                    <?php echo $province->name; ?>
                                                            </option>
                                                        <?php } ?>
                                                    </select>
                                                    <label for="name" class="form__label"><?php echo $_TRANS->text79; ?></label>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <div class="form__group field">
                                                    <select class="form__field" name="district">
                                                        <?php 
                                                            $district = $db->alone_data_where('district','id',$user->district);
                                                        ?>
                                                            <option value="<?php echo $user->district; ?>" selected>
                                                                <?php echo $district->name; ?>
                                                            </option>
                                                    </select>
                                                    <label for="name" class="form__label"><?php echo $_TRANS->text81; ?></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <div class="form__group field">
                                                    <input type="input" class="form__field" placeholder="Địa chỉ" name="address" id='address' required value="<?php echo $user->address; ?>" />
                                                    <label for="address" class="form__label"><?php echo $_TRANS->text76; ?></label>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <div class="form__group field">
                                                    <input type="input" class="form__field" placeholder="<?php echo $_TRANS->text75; ?>" name="phone" id='phone' required value="<?php echo $user->phone; ?>" />
                                                    <label for="phone" class="form__label"><?php echo $_TRANS->text75; ?></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <button id="sign-up-button" class="button-primary button-big" type="submit" value="Registrar"><?php echo $_TRANS->text104; ?></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <li class="hidden" data-tab-content-index="3">
                                <div class="wrap-box-tab">
                                    <h3 class="title_account"><?php echo $_TRANS->text105; ?></h3>
                                    <section class="account-content">
                                        <p>
                                            <?php echo $_TRANS->text106; ?>
                                        </p>
                                        <p>
                                            <?php echo $_TRANS->text107; ?>: <span><?php echo $user->email; ?></span>
                                        </p>
                                    </section>
                                    <form class="contactAjax" action="changeEmail">
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <div class="form__group field">
                                                    <input type="hidden" name="id" value="<?php echo $user->id; ?>">
                                                    <input type="password" class="form__field" placeholder="<?php echo $_TRANS->text108; ?>" name="password" id='password' required />
                                                    <label for="password" class="form__label"><?php echo $_TRANS->text108; ?></label>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <div class="form__group field">
                                                    <input type="email" class="form__field" placeholder="<?php echo $_TRANS->text109; ?>" name="emailNew" id='email' required />
                                                    <label for="email" class="form__label"><?php echo $_TRANS->text109; ?></label>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <div class="form__group field">
                                                    <input type="email" class="form__field" placeholder="<?php echo $_TRANS->text110; ?>" name="emailNewRepeat" id='name' required />
                                                    <label for="name" class="form__label"><?php echo $_TRANS->text110; ?></label>
                                                </div>
                                            </div>
                                        </div>
                                        <button id="sign-up-button" class="button-primary button-big" type="submit" value="Registrar"><?php echo $_TRANS->text111; ?></button>
                                    </form>
                                    <h3 class="title_account"><?php echo $_TRANS->text112; ?></h3>
                                    <section class="account-content">
                                        <p>
                                            
                                        </p>
                                        <p>
                                            <?php echo $_TRANS->text107; ?>: <span><?php echo $user->email; ?></span>
                                        </p>
                                    </section>
                                    <form class="contactAjax" action="changePassword">
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <div class="form__group field">
                                                    <input type="hidden" name="id" value="<?php echo $user->id; ?>">
                                                    <input type="password" class="form__field" placeholder="<?php echo $_TRANS->text108; ?>" name="password" id='password' required />
                                                    <label for="password" class="form__label"><?php echo $_TRANS->text108; ?></label>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <div class="form__group field">
                                                    <input type="password" class="form__field" placeholder="<?php echo $_TRANS->text113; ?>" name="passwordNew" id='name' required />
                                                    <label for="name" class="form__label"><?php echo $_TRANS->text113; ?></label>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <div class="form__group field">
                                                    <input type="password" class="form__field" placeholder="<?php echo $_TRANS->text114; ?>" name="passwordNewRepeat" id='name' required />
                                                    <label for="name" class="form__label"><?php echo $_TRANS->text114; ?></label>
                                                </div>
                                            </div>
                                        </div>
                                        <button id="sign-up-button" class="button-primary button-big" type="submit" value="Registrar"><?php echo $_TRANS->text115; ?></button>
                                    </form>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
<?php } ?>
<style type="text/css">
  .tab-component {
  }
  .tab-contents {
  }
  .tab-item{
    color: #000;
    font-size: 22px;
    font-weight: 700;
    text-transform: uppercase;
    cursor: pointer;
    margin-bottom: 15px;
  }
  .title_account{
      font-size: 28px;
      /* letter-spacing: .3px; */
      font-stretch: condensed;
      font-weight: 700;
      line-height: 32px;
      background: none;
      letter-spacing: .9px;
      text-transform: uppercase;
      padding-bottom: 2px;
  }
  .wrap-box-tab .form__group{
    max-width: 350px;
  }
  .account-content p span{
    font-weight: bold;
  }
</style>
  <script type="text/javascript">
    const activeTabClasses = ['active'];
  const inactiveTabClasses = [];

function toggleTabs(activeIndex) {
  $('.tab-buttons > li > div').each(function (k,v) {
    let current = $(v);
    if (current.hasClass('active')) {
      current.removeClass(activeTabClasses);
      current.addClass(inactiveTabClasses);
      current.parent().removeClass('-mb-px');
    } else {
      current.parent().addClass('-mb-px');
    }
  }); 
  $('.tab-buttons > li > div[data-tab-index=' + activeIndex + ']').each(function (k,v) {
    $(v).removeClass(inactiveTabClasses);
    $(v).addClass(activeTabClasses);
  }); 
}

$('.tab-item').on('click', function (e) {
 let sender = e.currentTarget;
 if (sender && !sender.classList.contains('disabled')) {
  let index = sender.attributes['data-tab-index'].value; 
  if (index !== undefined) {
    toggleTabs(index);
    $('.tab-contents > li').each(function (k,v) {
      let currIndex = v.attributes['data-tab-content-index'].value;
      if (currIndex == index) {
         $(v).removeClass('hidden');
      } else {
         $(v).addClass('hidden');
      }
    });
  }
  return false;
 } 
});
  </script>
  <style type="text/css">
    .menu-icon__icon{
      fill: #000 !important;
    }
    ._headerActions li > a, ._headerActions li > a:hover {
      color: #000 !important;
  }
  .mini-shop-cart-link svg path{
    fill: #000 !important;
  }
  .mini-shop-cart-quantity._mini-shop-cart-quantity {
      top: 15px !important;
  }
  ._searchButton a, ._searchButton a:hover {
      color: #000 !important; }
  span.search-box {
      border-bottom: 2px solid #000 !important;
  }
  </style>