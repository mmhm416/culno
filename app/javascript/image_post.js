$(function(){
  $('#image-input').on('change', function(e){
    let files = e.target.files;
    $.each(files, function(index, file) {
      let reader = new FileReader();
      console.log( reader )

      if(file.type.indexOf("image") < 0){
        alert("画像ファイルを指定してください。");
        return false;
      }

      reader.onload = (function(file){
        return function(e){
          let imageLength = $('#output-box').children('li').length;


          let labelLength = $("#image-input>label").eq(-1).data('label-id');


          $('#image-input').before(`<li class="preview-image" id="upload-image${labelLength}" data-image-id="${labelLength}">
                                      <figure class="preview-image__figure">
                                        <img src='${e.target.result}' title='${file.name}' >
                                      </figure>
                                      <div class="preview-image__button">
                                        <a class="preview-image__button__edit">編集</a>
                                        <a class="preview-image__button__delete" data-image-id="${labelLength}">削除</a>
                                      </div>
                                    </li>`);
          $("#image-input>label").eq(-1).css('display','none');


          if (imageLength < 4) {
            $("#image-input").append(`<label for="item_images${labelLength+1}" class="sell-container__content__upload__items__box__label" data-label-id="${labelLength+1}">
                                        <input multiple="multiple" class="sell-container__content__upload__items__box__input" id="item_images${labelLength+1}" style="display: none;" type="file" name="item[images][]">
                                        <i class="input-comment">
                                        ドラッグアンドドロップ                             
                                        またはクリックしてファイルをアップロード                             
                                        </i>
                                      </label>`);
          };
        };
      })(file);
      reader.readAsDataURL(file);
    });
  });
});