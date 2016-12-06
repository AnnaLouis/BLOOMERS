//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require bootstrap-datepicker
//= require moment
//= require bootstrap-datetimepicker
//= require_tree ./app/


$(function () {
  $('datetimepicker12').datetimepicker({
    format: 'DD/MM/YYYY HH:mm',
    locale: 'fr',
    sideBySide: true,
    stepping: 15,
    showClose: true,
    toolbarPlacement: 'bottom'
  });
});
