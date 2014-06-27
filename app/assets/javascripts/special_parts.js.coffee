# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $("body").on 'keyup', "#search", ->
    search_value = $("#search").val()
    pt_id_value = $("#special_part_id").val()
    url = "/search_special_parts"
    params = {search: search_value, special_part_id: pt_id_value}
    $.get(url, params, (response) ->
      $("#special_part").replaceWith(response))