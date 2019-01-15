$(function(){
  var container = $('.container'), inputFile = $('#file'), img, btn, txt = 'Browse', txtAfter = 'Browse another pic';
  var box = $(".input1")
  if(!container.find('#upload').length){
    container.find('.input').append('<input type="button" value="'+txt+'" id="upload">');
    btn = $('#upload');
    var html =`
    <a href="#" class="thumbnail hidden" id="thumbnailIMG">
      <img src="" class="Uploaded" alt="Uploaded file" id="uploadImg" width="500">
    </a>
    `
    box.prepend(html);
    img = $('#uploadImg');
  }

  btn.on('click', function(){
    img.animate({opacity: 0}, 300);
    inputFile.click();
  });

  inputFile.on('change', function(e){
    container.find('label').html( inputFile.val() );

    var i = 0;
    for(i; i < e.originalEvent.srcElement.files.length; i++) {
      var file = e.originalEvent.srcElement.files[i],
        reader = new FileReader();

      reader.onloadend = function(){
        img.attr('src', reader.result).animate({opacity: 1}, 700);
      }
      reader.readAsDataURL(file);
      $('#thumbnailIMG').removeClass('hidden');
    }

    btn.val( txtAfter );
  });

  $("#file").on("change", function() {
    var size_in_megabytes = this.files[0].size/1024/1024;
    if (size_in_megabytes > 5) {
      alert(I18n.t("upload_image.max_size_file"));
      $("#file").wrap('<form>').closest('form').get(0).reset();
      $("#file").unwrap();
    }
  });
});
