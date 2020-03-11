$(function(){
  $('.dropdwn li').hover(function(){
      $("ul:not(:animated)", this).slideDown();
  }, function(){
      $("ul.dropdwn__menu",this).slideUp();
  });
});