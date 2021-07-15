$(function() {
  // class='subImage'にマウスを乗せるとイベントが発火
  $('.subImage').click(function() {
    // マウスオーバーした画像のstyle(この場合、"background-image: url(<%= @post.images[i].image%>);")の値を取得し、それを変数Styleに代入）
    let Style = $(this).attr("style");
    console.log(Style)
    // id='mainImage'側でstyleを先ほど定義した変数Styleの値で取得し直す。
    $("#mainImage").attr({style:Style});
    // mainImage側で表示している画像を一旦空っぽにする。
    $("#mainImage").val("");
    // 新たに取得したstyleの値で、画像を表示させる。
    $("#mainImage").fadeIn();
  });
});

