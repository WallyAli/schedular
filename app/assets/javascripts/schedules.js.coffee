# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

makeAccordion = ->
	jQuery ->
	    $( "#accordion" ).accordion({
	      collapsible: true
	    });

jQuery ->
	makeAccordion

jQuery(document).on('page:load', makeAccordion)

makeDataTable = ->
	$('.datatable').dataTable({
		
	});

jQuery ->
	makeDataTable	

jQuery(document).on('page:load', makeDataTable)