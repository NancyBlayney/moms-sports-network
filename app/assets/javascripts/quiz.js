$(document).ready(function(){


	$('#submit-thing').click(function(){
		var input = $('input[type=radio]:checked', '#quiz-form');
		var all = $(".grading .question-body");
		if (input.length < all.length){
			alert('You missed at least one question!');
			return;
		}

   	input.map(function(){
   		var parent = $(this).parent().closest('div')
   		if (this.value == "true"){
   			parent.removeClass('wrong-answer');
   			parent.addClass('correct-answer');
   		} else {
   			parent.removeClass('correct-answer');
				parent.addClass('wrong-answer');
   		};
   	});

   	var correct = input.map(function(){
   		if (this.value == 'true'){
   			return this.value;
   		}
   	});

   	yourScore(correct, all);

	});
	

	function yourScore(correct, total){
		if (correct.length == total.length){
			$('#your-score').html('<h3>Congratulations! You got a perfect score - ' + correct.length + ' out of ' + total.length + '!</h3>')
		} else {
			$('#your-score').html('<h4>Your score: <strong>' + correct.length + '</strong> out of <strong>' + total.length + ".</strong><br> Keep it up - you're almost there!</h4>")
		}	
	};











});