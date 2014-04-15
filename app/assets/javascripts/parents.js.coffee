# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault();

    $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault();

makeDatePicker = ->
  $("input.datepicker").each (i) ->
    $(this).datepicker
      altFormat: "yy-mm-dd"
      dateFormat: 'dd-mm-YYYY'
      altField: $(this).next();
      
jQuery ->
  makeDatePicker();

jQuery(document).on('page:load', makeDatePicker)

makeSchedule = ->
  $(".schedule").dataTable();
    
jQuery ->
  makeSchedule();

jQuery(document).on('page:load', makeSchedule)
