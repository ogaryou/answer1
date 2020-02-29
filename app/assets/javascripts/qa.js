// window.addEventListener('load',()=>{
//   let button = document.querySelector("#new_qa");

//   button.addEventListener('click',(()=>{
//     let flag = true;
    
//     return()=>{
//       document.querySelector("#answer1").style.display=flag?"none":"block";
//       button.value = flag? "解答を表示する":"解答を隠す";

//       flag=!flag;
//     };
//   })());
// });


$(function(){
  $('.main__head__questions').html(gon.sample[gon.count].body);
  $('.main__bootom__botun__click__function').on('click', function(){

    gon.count += 0;
    var num = gon.count + 1;

    $('.main__head__question').html('解答' + num + '/' + gon.sample.length);

    $('.main__head__questions').html(gon.sample[gon.count].content);
    if (num === gon.sample.length) {
      $('.main__bootom__botun__click__function__next').hide();
      $('.main__bootom__botun__click__function').hide();
      $('.main__head__question').html('お疲れ様でした');
    };
  })
  $('.main__bootom__botun__click__function__next').on('click', function(){
    console.log('嫌だ');
    // document.getElementById("question1").textContent= "問題";
    gon.count += 1;
    var num = gon.count + 1;
    $.ajax({
      url: '/qas/index',
      type: 'GET',
      dataType: 'HTML',
      async: true,
      data: {
        count: gon.count,
        sample: gon.sample,
      },
    });

    $('.main__head__question').html('問題' + num + '/' + gon.sample.length);
    $('.main__head__questions').html(gon.sample[gon.count].body);

  })
})


