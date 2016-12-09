// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.


//= require jquery
//= require jquery.slick
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree

$(document).on('turbolinks:load', function() {

  $('.games-row').slick({
      dots: true,
  infinite: true,
  speed: 300,
  slidesToShow: 4,
  slidesToScroll: 4,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]
  });

  $(".fa-arrow-circle-up").mouseover(function(){
    $(this).css('color', 'grey')
});
  $(".fa-arrow-circle-up").mouseout(function(){
    $(this).css('color', '#efefef')
});
  $(".fa-arrow-circle-up").click(function(){
    $(this).addClass('change-color-green');
  });

  $(".fa-arrow-circle-down").mouseover(function(){
    $(this).css('color', 'grey')
});
  $(".fa-arrow-circle-down").mouseout(function(){
    $(this).css('color', '#efefef')
});
  $(".fa-arrow-circle-down").click(function(){
    $(this).addClass('change-color-red');
  });

  $(".fa-plus-circle").mouseover(function(){
    $(this).css('color', 'grey')
});
  $(".fa-plus-circle").mouseout(function(){
    $(this).css('color', '#efefef')
});

})



