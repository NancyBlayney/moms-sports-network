$(document).ready(function(){

	$(window).ready(function(){
		$('.overviewp').show();
	})

	$('#rules, #overview').click(function(){
		$('.partial').hide();
		$('.rulesp').show();
	});

	$('#overview').click(function(){
		$('.partial').hide();
		$('.overviewp').show();
	});


});

