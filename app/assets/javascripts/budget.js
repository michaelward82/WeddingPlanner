function calculate_budget_totals() {
	var budget_estimated_total = 0;
	$(".budget_item .estimated_cost input").each(function() {
		if (parseFloat($(this).val()) > 0 ) {
			budget_estimated_total += parseFloat($(this).val());
		}
	})
	$("#estimated_total input").val(budget_estimated_total.toString());
	
	var budget_actual_total = 0;
	$(".budget_item .actual_cost input").each(function() {
		if (parseFloat($(this).val()) > 0 ) {
			budget_actual_total += parseFloat($(this).val());
		}
	})
	$("#actual_total input").val(budget_actual_total.toString());
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
  		}
  	});
  	calculate_budget_totals();
  	$("#budget_items input").live('blur', function() {
  	  calculate_budget_totals();
  	})
  	$("form").live("nested:fieldAdded", function() {
  	  $("p > .fields").appendTo($("#budget_items"));
  	});
  }
})