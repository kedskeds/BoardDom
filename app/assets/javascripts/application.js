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
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree
$( document ).ready(function(){

  $(".cover-images").mouseover(function(){
    $(this).find('img').addClass('overlay')
    $(this).find('.overlay-text').show();
});
  $(".cover-images").mouseout(function(){
    $(this).find('img').removeClass('overlay')
    $(this).find('.overlay-text').hide();
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
    $(".fa-plus-circle").click(function(){
      event.preventDefault();
    $(this).removeClass('fa-plus-circle')
    $(this).addClass('fa-check-circle change-color-green')
});



})



