// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('#dashboard_project a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
})
