$(window).scroll(function() {

    if ($(this).scrollTop()>130)
     {
        $('.little-container').fadeOut();
     }
    else
     {
      $('.little-container').fadeIn();
     }
});