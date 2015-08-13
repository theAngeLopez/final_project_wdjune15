$(document).on('ready', function() {
  $('#search-form').on('submit', function(event) {
    event.preventDefault();

    var searchValue = $('#search-form input:checked').map(function(value, key) { return key.value });
    var searchValueParams = $.param({tags: $.makeArray(searchValue)});

    $.ajax({
      url: '/projects?' + searchValueParams,
      method: 'GET',
      dataType: 'script'
    });

  });
});