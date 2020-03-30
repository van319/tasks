$(function () {
  var i = 0;
  while( i < gon.tasks.length){
  const index = i;
    $('img_open_'+index).on('click', () => {
    $('img').toggle(hidden);
    });
  }});