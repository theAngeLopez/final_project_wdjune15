$(document).on('ready', function() {
  $('#search-form').submit(function(event) {
    event.preventDefault();
    var searchValue = $('#search').val();

    $.ajax({
      url: '/projects?tags=' + searchValue,
      method: 'GET',
      dataType: 'script'
    }).done(function (data) {
      $('#projects').html(data);
    });

  });
});