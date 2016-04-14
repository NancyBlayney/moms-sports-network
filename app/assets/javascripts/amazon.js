$(document).ready(function(){

	$('.filter').on('change', function(){
		sport = $('.sport-filter').val();
		position = $('.position-filter').val();
		age = $('.age-filter').val();
		gender = $('.gender-filter').val();
		item = $('.item-filter').val();
		if (age == 'toddler'){ 
			$('#amazon_search').val(sport + " " + position +  " " + item)
			return
		} else if ((age == 'kids') && (gender == 'mens')){
			$('#amazon_search').val(sport + " " + position + " " + "boys" + " " + item)
			return
		} else if ((age == 'kids') && (gender == 'womens')){
			$('#amazon_search').val(sport + " " + position + " " + "girls" + " " + item)
			return
		} else {
			$('#amazon_search').val(sport + " " + position + " " + gender + " " + item)
			return
		};				
	});




});