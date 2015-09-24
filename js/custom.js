jQuery(function( $ ){
  $('.content > div').hide();
  var activeRef = $('.nav-tabs li[class=active]').attr('ref');
  $('div[data-ref=' + activeRef + ']').show();

  $('.nav-tabs a').click(function(e) {
    e.preventDefault();
    $('.content > div').hide();
    $('.nav-tabs li').removeClass('active');
    var p = $(e.target).parent();
    p.addClass('active');
    $('div[data-ref=' + p.attr('ref') + ']').show();
  })
});
