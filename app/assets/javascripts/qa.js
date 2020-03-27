
$(function(){
  $('.main__head__questions__answer').html(gon.sample[gon.count].body);
  $('.main__bootom__botun__click__function').on('click', function(){
    

    gon.count += 0;
    var num = gon.count + 1;

    $('.main__head__question').html('解答' + num + '/' + gon.sample.length);

    $('.main__head__questions__answer').html(gon.sample[gon.count].content);
    if (num === gon.sample.length) {
      $('.main__bootom__botun__click__function__next').hide();
      $('.main__bootom__botun__click__function').hide();
      $('.main__head__question').html('お疲れ様でした');
    };
  })
  $('.main__bootom__botun__click__function__next').on('click', function(){
    console.log('嫌だ');
    var target = document.getElementById("edit");

 
    gon.count += 1;
    var num = gon.count + 1;
    $.ajax({
      url: '/qas/index',
      type: 'POST',
      dataType: 'html',
      async: true,
      data: {
        count: gon.count,
        sample: gon.sample,
      },
    });
    var url =gon.sample[gon.count].id;
    var qas ='/qas/';
    var edit ='/edit';
      target.href = qas +url +edit;
    

    $('.main__head__question').html('問題' + num + '/' + gon.sample.length);
    $('.main__head__questions__answer').html(gon.sample[gon.count].body);

  })
})


