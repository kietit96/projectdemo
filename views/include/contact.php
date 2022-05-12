<section id="contact">
  <?php $menuT = $db->alone_data_where_where("menu_lang", "menu_id", $menuPage->id, "lang", $lang); ?>
  <div class="breadcrumb">
    <div class="container">
      <div class="row">
        <div class="col-12">
          Liên hệ ngay với chúng tôi để được tư vấn và hỗ trợ tốt nhất
        </div>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-12">

        <hr>
      </div>
      <div class="col-md-7 col-12">
        <form class="contactAjax" method="POST" action="contact">
          <input type="hidden" name="gmail" value="<?php echo $infoPage->gmail ?>">
          <input type="text" class="form-control" placeholder="Họ và tên (*)" required>
          <input type="tel" class="form-control" placeholder="Phone (*)" required>
          <input type="email" class="form-control" placeholder="Email">
          <textarea class="form-control" placeholder="Nội dung"></textarea>
          <p style="color: #444;">(*) = thông tin bắt buộc</p>
          <div class="detail">
            <button type="submit">Gửi thông tin</button>
          </div>
        </form>
      </div>
      <div class="col-md-5 col-12">
        <?php echo $menuT->content ?>
      </div>
    </div>
  </div>
</section>