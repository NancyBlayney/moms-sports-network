$(document).ready(function(){


	$('.fa-plus').click(function(){
		$('.fa-plus').hide();
		$('.fa-times').show();
		$('#filter-list').show();
	});

	$('.fa-times').click(function(){
		$('.fa-times').hide();
		$('.fa-plus').show();
		$('#filter-list').hide();
	});

	$('.fa-times-circle').click(function(){
		$('.filter').val("")
		$('#amazon_search').val("")
	});

	$('.filter').on('change', function(){
		sport = $('.sport-filter').val();
		position = $('.position-filter').val();
		age = $('.age-filter').val();
		gender = $('.gender-filter').val();
		item = $('.item-filter').val();
		if (age == 'toddler'){ 
			$('#amazon_search').val(sport + " " + position +  "toddler" + item)
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