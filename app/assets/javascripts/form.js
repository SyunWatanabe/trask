$(document).on('turbolinks:load', function () {
  $('#answer-slide').click(function () {
    $('#ans-form').toggle();
  });
});

$('#user_image').bind('change', function () {
  var size_in_megabytes = this.files[0].size / 1024 / 1024;
  if (size_in_megabytes > 5) {
    alert('Maximum file size is 5MB. Please choose a smaller file.');
  }
});

$('#answer_repicture').bind('change', function () {
  var size_in_megabytes = this.files[0].size / 1024 / 1024;
  if (size_in_megabytes > 5) {
    alert('Maximum file size is 5MB. Please choose a smaller file.');
  }
});

$('#question_picture').bind('change', function () {
  var size_in_megabytes = this.files[0].size / 1024 / 1024;
  if (size_in_megabytes > 5) {
    alert('Maximum file size is 5MB. Please choose a smaller file.');
  }
});
