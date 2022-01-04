$(document).ready(function(){
	$('#getAddrBtn').click(function(){
		var postCode  = $('#entry_postcode5').val();
		var doroAddr  = $('#entry_address').val();
		var jibunAddr = $('#entry_extra_info').val();
		
		$('#addr1').val(postCode);
		$('#addr2').val(doroAddr + ' ' + jibunAddr);
	});
});