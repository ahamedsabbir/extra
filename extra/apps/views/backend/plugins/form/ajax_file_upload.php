<body>
    <span id="msg" style="color:red"></span><br/>
    <input type="file" id="photo"><br/>
  <script type="text/javascript" src="jquery-3.2.1.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){
      $(document).on('change','#photo',function(){
        var property = document.getElementById('photo').files[0];
        var image_name = property.name;
        var image_extension = image_name.split('.').pop().toLowerCase();
        if(jQuery.inArray(image_extension,['gif','jpg','mp4','']) == -1){
          alert("Invalid image file");
        }
        var form_data = new FormData();
        form_data.append("file",property);
        $.ajax({
          url:'index.php?url=plugins_form_class/ajax_upload_function/',
          method:'POST',
          data:form_data,
          contentType:false,
          cache:false,
          processData:false,
          beforeSend:function(){
            $('#msg').html('Loading......');
          },
          success:function(data){
            console.log(data);
            $('#msg').html(data);
          }
        });
      });
    });
  </script>
</body>