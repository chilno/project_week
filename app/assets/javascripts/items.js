$(document).ready(function(){
	$("#add_product").submit(function(e){

		e.preventDefault();
		$.post('/items', $(this).serialize(), function(data){
			if (data.error) {
				 var err = data.error
				 $('.name, .price, .description').prev('input, textarea').css({'border': ''});
				 for(key in err){
				 	if (err[key].includes("Name") == true) {
				 		$('.name').append('<p style="color:red">'+err[key]+'</p>');
				 		$('.name').prev('input').css({'border': '1px solid red'});
				 	}
				 	else if (err[key].includes("Price") == true) {
				 		$('.price').append('<p style="color:red">'+err[key]+'</p>');
				 		$('.price').prev('input').css({'border': '1px solid red'});
				 	}
				 	else{
				 		$('.description').append('<p style="color:red">'+err[key]+'</p>');
				 		$('.description').prev('textarea').css({'border': '1px solid red'});
				 	}
				 }
			}else{
				location.reload();
				console.log(data.notice);		
				// $('.add_product').modal('hide');
				$('#flash').html(data.notice);
				// $('#flash').addClass('alert alert-success').append('<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>').append('<p>Successfully added</p>');

			}
		});
	});

	// $.get('https://api.github.com/emojis', function(data){
	// 	$('#hello-title').append("<img src='"+data['car']+"' >");
	// 	console.log(data);
	// });
});