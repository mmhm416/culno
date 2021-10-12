document.addEventListener('DOMContentLoaded', function(){
  if ( document.getElementById('message-input')){

    const MessageInput = document.getElementById('message-input');

    const createImageHTML = (blob) => {

      MessageInput.setAttribute("style", `background-image: url(${blob});`)
      console.log(blob)


    };

    document.getElementById('message-input').addEventListener('change', function(e){


      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);

      createImageHTML(blob);
    });
  }
});