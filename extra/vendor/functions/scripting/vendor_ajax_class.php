<?php
class vendor_ajax_class{
	public static function ajax_function($class, $function, $array, $addone = false){
	$string = "";
	foreach($array as $idkey => $name_value){
		$string .= "$name_value: $('#$idkey').val(),";
	}
	$string = rtrim($string, ",");
	if($addone != false){
			$string.",".$addone;
	}
	echo $data = <<<TEXT
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$("#setajaxdata").click(function(event){
  var formData = {
	  $string
	};
  $.ajax({
	url :"index.php?url=$class/$function/",
	type:"POST",
	data:formData,
	encode:true,
	enctype: 'multipart/form-data',
	success:function(data){
	  $("#getajaxdata").html(data);
	},
	error:function(data){
	  alert("not send msg for some resones."); 
	}
  });
});
</script>
TEXT;
	}
  public static function ajax_file_upload($class, $function, $array, $addone = false){
	echo $data = <<<TEXT
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$("#uploadFile").on('change', function(){
	var file_data = $("#uploadFile").prop('files')[0];   
	var folder = '<?php echo $folder; ?>';   
	var form_data = new FormData();                  
	form_data.append('file', file_data);
	form_data.append('folder', folder);
	$.ajax({
	  url:"soft.php?url=upload/local_file_upload/",
	  type:"POST",
	  cache:false,
	  contentType: false,
	  processData: false,
	  data:form_data,
	  success:function(html){
		$("#source").html(html); 
		document.getElementById("input_source").value = html;
		document.getElementById("openlinkfile").href = html;
	  }
	});
});
</script>
TEXT;
  }
}
?>