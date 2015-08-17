$(document).on('ready', function() {
  $('#search-form').on('submit', function(event) {
    event.preventDefault();

    // debugger
    var searchValue = $('#search-form input:checked').map(function(value, key) { return key.value });
    // console.log(searchValue);
    // debugger
    var searchValueParams = $.param({tags: $.makeArray(searchValue)});
    // console.log(searchValueParams);
    // debugger

    $.ajax({
      url: '/projects?' + searchValueParams,
      method: 'GET',
      dataType: 'script'
    });

    // var params = { tags: $('#search-form input:checked').serialize;

    // params =

    // $.ajax({
    //   url: '/projects?',
    //   method: 'GET',
    //   dataType: 'script',
    //   data: { tags: params }
    // });

  });
});