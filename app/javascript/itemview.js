$(function() {
  $('.subImage').click(function() {
    let Style = $(this).attr("style");
    console.log(Style)
    $("#mainImage").attr({style:Style});
    $("#mainImage").let("");
    $("#mainImage").fadeIn();
  });
});

