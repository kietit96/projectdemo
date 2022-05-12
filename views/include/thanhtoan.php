<!-- <link rel='stylesheet' href='views/template/css/thanhtoan.css' type='text/css' media='all' /> -->
<link rel='stylesheet' href='views/template/css/checkouts.css' type='text/css' media='all' />
<div class="container">
	<div class="row">
		<div id="resultCart" class="col-12">
			<?php if (isset($_SESSION["cart"]) && $_SESSION["cart"] != '' && count((array) $cart->all()) != 0) { ?>
				<form method="post" class="contactAjax" action="cart" baseUrl="<?= baseUrl ?>">
					<div class="content">
						<div class="wrap">
							<div class="sidebar">
								<div class="sidebar-content">
									<div class="order-summary order-summary-is-collapsed">
										<h2 class="visually-hidden"><?php echo $_TRANS->text64; ?></h2>
										<div class="order-summary-sections">
											<div class="order-summary-section order-summary-section-product-list" data-order-summary-section="line-items">
												<table class="product-table listCart">
													<thead>
														<tr>
															<th scope="col">
																<span class="visually-hidden"><?php echo $_TRANS->text65; ?></span>
															</th>
															<th scope="col">
																<span class="visually-hidden"><?php echo $_TRANS->text56; ?></span>
															</th>
															<th scope="col">
																<span class="visually-hidden"><?php echo $_TRANS->text56; ?></span>
															</th>
															<th scope="col">
																<span class="visually-hidden"><?php echo $_TRANS->text58; ?></span>
															</th>
														</tr>
													</thead>
													<tbody>
														<?php
														foreach ($cart->list as $key => $item) :
															$data = $db->alone_data_where("data", "id", $item->id);
															$dataTitle = $db->alone_data_where_where('data_lang', 'data_id', $data->id, 'lang', $lang);
															if ($dataTitle->sale != '' && $dataTitle->sale != 0) {
																$total += $dataTitle->sale * $item->count;
															} else {
																$total += $dataTitle->price * $item->count;
															}
														?>
															<tr class="product dataCart" data-id="<?= $key ?>" id="data<?= $key; ?>">
																<td class="product-image">
																	<div class="product-thumbnail">
																		<div class="product-thumbnail-wrapper">
																			<img <?php echo srcImg($data); ?>>
																		</div>
																		<span class="product-thumbnail-quantity" aria-hidden="true"><?= $item->count ?></span>
																		<input type="hidden" value="<?= $data->id ?>" name="cart[<?= $data->id ?>]" />
																		<input class="cart-qty border count" type="hidden" value="<?= $item->count ?>" name="count[<?= $data->id ?>]" min="1" />
																	</div>
																</td>
																<td class="product-description">
																	<span class="product-description-name order-summary-emphasis">
																		<?= $dataTitle->title ?>
																	</span>
																	<span class="product-description-variant order-summary-small-text">
																		<?php foreach ($item->option as $optionName => $option) : ?>
																			<?= $option ?> /
																		<?php endforeach ?>
																	</span>
																</td>
																<td class="product-quantity visually-hidden">
																	<?= $item->count ?>
																</td>
																<td class="product-price">
																	<span class="order-summary-emphasis">
																		<?php
																		if ($dataTitle->sale == '' || $dataTitle->sale == 0) {
																			echo $dataTitle->price;
																		} else {
																			echo $dataTitle->sale;
																		}
																		?>
																	</span>
																</td>
															</tr>
														<?php endforeach ?>
													</tbody>
												</table>
											</div>
											<div class="order-summary-section order-summary-section-total-lines payment-lines" data-order-summary-section="payment-lines">
												<table class="total-line-table">
													<tbody>
														<tr class="total-line total-line-subtotal">
															<td class="total-line-name">
																<?php echo $_TRANS->text66; ?>
															</td>
															<td class="total-line-price">
																<span class="order-summary-emphasis">
																	<?php
																	if (isset($_COOKIE['voucher'])) {
																		echo $total = ($total * (100 - $_COOKIE['voucher'])) / 100;
																	} else {
																		echo $total = $total;
																	}
																	?>
																</span>
															</td>
														</tr>
														<tr class="total-line total-line-shipping">
															<td class="total-line-name">
																<?php echo $_TRANS->text68; ?>
															</td>
															<td class="total-line-price">
																<span id="ship" class="order-summary-emphasis">
																</span>
															</td>
														</tr>
													</tbody>
													<tfoot class="total-line-table-footer">
														<tr class="total-line">
															<td class="total-line-name payment-due-label">
																<span class="payment-due-label-total"><?php echo $_TRANS->text68; ?></span>
															</td>
															<td class="total-line-name payment-due">
																<span class="payment-due-currency">VND</span>
																<span id="total" class="payment-due-price">
																	<?php
																	echo $total;
																	?>
																</span>
																<span id="total2">
																	<input type="hidden" name="price" value="<?php echo $total; ?>">
																</span>
															</td>
														</tr>
													</tfoot>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="main">
								<div class="main-header">
									<ul class="breadcrumb">
										<?php echo $db->breadcrumbMenu($menuPage, $lang); ?>
									</ul>
								</div>
								<div class="main-content">
									<div class="step">
										<div class="step-sections steps-onepage" step="1">
											<div class="section">
												<div class="section-header">
													<h2 class="section-title"><?php echo $_TRANS->text69; ?></h2>
												</div>
												<div class="order-summary-section order-summary-section-discount" data-order-summary-section="discount">
													<form id="form_discount_add" accept-charset="UTF-8" method="post">
														<div class="fieldset">
															<div class="field ">
																<div class="field-input-btn-wrapper">
																	<div class="field-input-wrapper">
																		<label class="field-label" for="voucher"><?php echo $_TRANS->text70; ?></label>
																		<input placeholder="<?php echo $_TRANS->text70; ?>" class="field-input" data-discount-field="true" autocomplete="off" autocapitalize="off" spellcheck="false" size="30" type="text" id="sale_code" name="sale_code" value="<?php if (isset($_COOKIE['voucher'])) {
																																																																										echo $_COOKIE['voucher'];
																																																																									} ?>">
																	</div>
																	<button type="button" class="field-input-btn btn btn-default btn-disabled" onclick="voucher()">
																		<span class="btn-content"><?php echo $_TRANS->text71; ?></span>
																		<i class="btn-spinner icon icon-button-spinner"></i>
																	</button>
																</div>
															</div>
														</div>
														<div class="fieldset" style="margin: 0px;">
															<?php if (isset($_COOKIE['voucher'])) : ?>
																<?php echo $_TRANS->text72; ?> <?php echo $_COOKIE['voucher']; ?> %
															<?php endif ?>

														</div>

													</form>

												</div>

												<div class="section-content section-customer-information ">

													<div class="fieldset" style="margin: 0px;">

														<?php if (!isset($user)) : ?>

															<p><?php echo $_TRANS->text73; ?> <a <?php echo linkMenu($menuLogin); ?>><?php echo $_TRANS->text31; ?></a></p>

														<?php endif ?>

														<div class="field field-required field-show-floating-label">

															<div class="field-input-wrapper">

																<label class="field-label" for="billing_address_full_name"><?php echo $_TRANS->text74; ?></label>

																<input placeholder="<?php echo $_TRANS->text74; ?>" autocapitalize="off" spellcheck="false" class="field-input" size="30" type="text" id="billing_address_full_name" name="title" value="<?php if (isset($user)) {
																																																																echo $user->title;
																																																															} ?>">
																<input type="hidden" name="gmail" value="<?php echo $infoPage->gmail; ?>">
																<input type="hidden" name="user" value="<?php if (isset($user)) {
																											echo $user->id;
																										} ?>">
																<input type="hidden" name="f2" value="1">
																<input type="hidden" name="lang" value="<?php echo $lang; ?>">
															</div>
														</div>
														<div class="field field-required field-show-floating-label">
															<div class="field-input-wrapper">
																<label class="field-label" for="billing_address_phone"><?php echo $_TRANS->text75; ?></label>
																<input placeholder="<?php echo $_TRANS->text75; ?>" autocapitalize="off" spellcheck="false" class="field-input" size="30" maxlength="11" type="tel" id="billing_address_phone" name="phone" value="<?php if (isset($user)) {
																																																																		echo $user->phone;
																																																																	} ?>">
															</div>
														</div>
														<div class="field field-required">
															<div class="field-input-wrapper">
																<label class="field-label" for="billing_address_address1">Email</label>
																<input placeholder="Email" autocapitalize="off" spellcheck="false" class="field-input" size="30" type="text" id="billing_address_address1" name="email" value="<?php if (isset($user)) {
																																																									echo $user->email;
																																																								} ?>">
															</div>
														</div>
														<div class="field field-required">
															<div class="field-input-wrapper">
																<label class="field-label" for="billing_address_address1"><?php echo $_TRANS->text76; ?></label>
																<input placeholder="Địa chỉ" autocapitalize="off" spellcheck="false" class="field-input" size="30" type="text" id="billing_address_address1" name="address" value="<?php if (isset($user)) {
																																																										echo $user->address;
																																																									} ?>">
															</div>
														</div>
														<div class="field field-required">
															<div class="field-input-wrapper">
																<label class="field-label" for="billing_address_address1"><?php echo $_TRANS->text77; ?></label>
																<textarea name="content" class="field-input" placeholder="<?php echo $_TRANS->text77; ?>"></textarea>
															</div>
														</div>
													</div>
												</div>
												<div class="section-content">
													<div class="fieldset">
														<div class="content-box mt0">
															<div id="cod" class="radio-wrapper content-box-row">
																<label class="radio-label">
																	<div class="radio-input">
																		<input type="radio" id="f1_false" name="f1" class="input-radio" value="<?php echo $_TRANS->text78; ?>" checked="">
																	</div>
																	<span class="radio-label-primary"><?php echo $_TRANS->text78; ?></span>
																</label>
															</div>
															<div id="form_update_location_customer_shipping" class="order-checkout__loading radio-wrapper content-box-row content-box-row-padding content-box-row-secondary " for="customer_pick_at_location_false">
																<div class="order-checkout__loading--box">
																	<div class="order-checkout__loading--circle">
																	</div>
																</div>
																<div class="field field-show-floating-label field-required field-half  ">
																	<div class="field-input-wrapper field-input-wrapper-select">
																		<label class="field-label" for="customer_shipping_province"> <?php echo $_TRANS->text79; ?> </label>
																		<select class="field-input field-input2" id="customer_shipping_province" name="province">
																			<option selected=""> <?php echo $_TRANS->text80; ?> </option>
																			<?php
																			$listProvince = $db->list_data('province');
																			foreach ($listProvince as $key => $province) {
																			?>
																				<option value="<?php echo $province->id; ?>">
																					<?php echo $province->name; ?>
																				</option>
																			<?php } ?>
																		</select>
																	</div>
																</div>
																<div class="field field-show-floating-label field-required field-half  ">
																	<div class="field-input-wrapper field-input-wrapper-select">
																		<label class="field-label" for="customer_shipping_district"><?php echo $_TRANS->text81; ?></label>
																		<select class="field-input" id="customer_shipping_district" name="district" data-price='<?php echo $total; ?>'>
																			<option data-code="null" value="null" selected=""><?php echo $_TRANS->text82; ?></option>
																		</select>
																	</div>
																</div>
															</div>
															<div id="" class="radio-wrapper content-box-row">
																<label class="radio-label">
																	<div class="radio-input">
																		<input type="radio" id="f1_true" name="f1" class="input-radio" value="<?php echo $_TRANS->text83; ?>">
																	</div>
																	<span class="radio-label-primary"><?php echo $_TRANS->text83; ?></span>
																</label>
															</div>
															<div id="form_update_location_customer_pick_at_location" class="radio-wrapper content-box-row content-box-row-secondary hidden" for="customer_pick_at_location_true">
																<div class="blank-slate">
																	<?php echo $_TRANS->text84; ?>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="step-footer">
											<button type="submit" class="step-footer-continue-btn btn">
												<span class="btn-content"><?php echo $_TRANS->text85; ?></span>
											</button>
											<a class="step-footer-previous-link" <?php echo linkMenu($menuShop); ?>>
												<svg class="previous-link-icon icon-chevron icon" xmlns="http://www.w3.org/2000/svg" width="6.7" height="11.3" viewbox="0 0 6.7 11.3">
													<path d="M6.7 1.1l-1-1.1-4.6 4.6-1.1 1.1 1.1 1 4.6 4.6 1-1-4.6-4.6z"></path>
												</svg>
												<?php echo $_TRANS->text86; ?>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			<?php } ?>
		</div>
	</div>
</div>