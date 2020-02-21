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
  $('.main__bootom__botun__click__function').on('click', function(){
    console.log('今晩わ');
    document.getElementById("question1").textContent= "解答";
    const p1 = document.getElementById("answer1");

    if(p1.style.display=="block"){
        // noneで非表示
        p1.style.display ="none";
    }else{
        // blockで表示
        p1.style.display ="block";
    }
  })
})
