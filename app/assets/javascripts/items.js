$(document).ready(function(){
	$("#add_product").submit(function(e){
		e.preventDefault();
		$.post('/items', $(this).serialize(), function(data){
			if (data.error) {
				 var err = data.error
				 $('.name, .price, .description').html('');
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
				// alert("Hello");
				$('.add_product').modal('hide');
				location.reload();
			}
		});
	});
});