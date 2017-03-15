<h2> <?php echo $text_title; ?> </h2>
<?php
  if ($testmode == 'Yes'){
    echo '    <h2>'.$text_testmode . "</h2>";
  }
?>
<div>
<p> <?php echo $text_click_link; ?> </p><br />

<a href="<?php echo $qrcode_url_v2; ?>" target="_blank">
<img border="0" alt="W3Schools" src="image/payment/stellar_net/pay_my_wallet.png" ></a>

<p><?php echo $text_or_scan ?></p><br /> 
<?php echo $qrcode_v2?><br />

<a href="<?php echo $qrcode_url_v2; ?>" target="_blank"><img id="qrcode" style="width:300px; height:300px; margin-top:15px;"/></a>


<script type="text/javascript">
$( document ).ready(function () {
    
var qrcode = new QRCode(document.getElementById("qrcode"), {
	width : 300,
	height : 300
});
//qrcode.makeCode("<?php echo $qrcode_json; ?>");
qrcode.makeCode("<?php echo $qrcode_v2; ?>");

});
</script>

<p>  <?php echo $text_or_send; ?>   </p>
<h3> <?php echo $text_to_PublicId; ?> <?php echo $stellar_net_publicid; ?></h3>
<h3> <?php echo $text_amount; ?> <?php echo $total; ?></h3>
<h3> <?php echo $text_asset_code; ?> <?php echo $asset_code; ?></h3>
<h3> <?php echo $text_issuer; ?> <?php echo $issuer; ?></h3>
<h3> <?php echo $text_memo; ?> <?php echo $order_id; ?></h3>
</div>

<div class="buttons">
  <div class="pull-right">
    <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn btn-primary" data-loading-text="<?php echo $text_loading; ?>" />
  </div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').on('click', function() {
	$.ajax({
		type: 'get',
		url: 'index.php?route=extension/payment/stellar_net/confirm',
		cache: false,
		beforeSend: function() {
			$('#button-confirm').button('loading');
		},
		complete: function() {
			$('#button-confirm').button('reset');
		},
		success: function() {
            alert("success!!  Make sure to send total funds of purchase to stellar address payment address to continue processing" )
			location = '<?php echo $continue; ?>';
		}
	});
});
//--></script>
