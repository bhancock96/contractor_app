$(document).ready(function(){
	$('#new_expense').hide();
	$('#add_expense').on('click', function(){
		$('#new_expense').show();
	})
})