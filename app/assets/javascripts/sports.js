$(document).ready(function(){

	$(window).ready(function(){
		$('.overviewp').show();
	})

	$('#overview').click(function(){
		$('.partial').hide();
		$('.overviewp').show();
	});
	$('#quiz').click(function(){
		$('.partial').hide();
		$('.quizp').show();
	});
	$('#garb').click(function(){
		$('.partial').hide();
		$('.garbp').show();
	});
	$('#gear').click(function(){
		$('.partial').hide();
		$('.gearp').show();
	});

  $("#rules").click(function() {
		$('.partial').hide();
		$('.rulesp').show();
    jQuery.each($("iframe"), function() {
        $(this).attr({
            src: $(this).attr("src")
        });
    });
    return false;
  });

  $(".sport-section").click(function(){
		$(this).find('div.sport-body').toggle();


  });





});

