function ajax_submit_budget() {
	$.ajax({
		type: 'post',
		data: $('form').serialize(),
		dataType: 'script',
		url: '/budget/sort'
	})
}
function calculate_estimated_budget_total() {
	var budget_estimated_total = 0;
	$(".budget_item .estimated_cost input").each(function() {
		if (parseFloat($(this).val()) > 0 ) {
			budget_estimated_total += parseFloat($(this).val());
		}
		console.log(this);
		console.log(budget_estimated_total);
	})
	$("#estimated_total input").val(budget_estimated_total.toString());
	ajax_submit_budget();
}
function calculate_actual_budget_total() {
	var budget_actual_total = 0;
	$(".budget_item .actual_cost input").each(function() {
		if (parseFloat($(this).val()) > 0 ) {
			budget_actual_total += parseFloat($(this).val());
		}
		console.log(this);
		console.log(budget_actual_total);
	})
	$("#actual_total input").val(budget_actual_total.toString());
	ajax_submit_budget();
}


//DOM READY
$(function() {
  if ($("#budget_planner_app").length) {
  	$('#budget_items').sortable({
  		axis: 'y',
  		dropOnEmpty: false,
  		handle: '.handle',
  		cursor: 'crosshair',
  		items: '.fields',
  		opacity: 0.4,
  		scroll: true,
  		update: function(){
  			$('#budget_items .budget_item').each(function(i) {
  				$(".position", this).val(i+1);
  			})
  			ajax_submit_budget();
  		}
  	});
  	calculate_estimated_budget_total();
  	calculate_actual_budget_total();
  	$(".budget_item .estimated_cost input").live('blur', function() {
  		calculate_estimated_budget_total();
  	})
  	$(".budget_item .actual_cost input").live('blur', function() {
  		calculate_actual_budget_total();
  	})
  }
})