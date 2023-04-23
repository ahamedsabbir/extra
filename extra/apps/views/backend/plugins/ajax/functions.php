<?php
function searchAjax(){
	$data_array_key = array("id", "status");
	$data_array_value = array(1, 1);
	$ajax_url = address_class::address_function("ajax", "getFunc", "index", $data_array_key, $data_array_value); 
	echo <<<TEXT
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("#searchid01").on("change",function(){
      var datatable = "example_post_datatable";
      var token = "sabbir1928374655";
      var search = $(this).val();
      /*var data_array = 'search='+search+'&token='+token+'&datatable='+datatable;*/
      var data_array = {'search':search, 'token':token, 'datatable':datatable};
      $.ajax({
        url :"$ajax_url",
        type:"POST",
        cache:false,
        data:data_array,
        success:function(html){
          $("#searchresultid01").html(html);
        }
      });
    });
});
</script>
TEXT;
}

function uploadAjax(){
	$ajax_url = address_class::address_function("ajax", "fileFunc", "index"); 
	echo <<<TEXT
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("#uploadid01").on("change",function(){
      var files = $("#uploadid01").prop('files')[0]; 
      var datatable = "example_datatable";
      var token = "sabbir1928374655";
      var form_data = new FormData(); 
	  form_data.append('files', files);
	  form_data.append('datatable', datatable);
	  form_data.append('token', token);
      $.ajax({
        url :"$ajax_url",
        type:"POST",
        cache:false,
        data:form_data,
		processData: false,
		contentType: false,
        success:function(html){
          $("#uploadresultid01").html(html);
		  document.getElementById("input_source").value = html;
		  document.getElementById("openlinkfile").href = html;
        }
      });
    });
});
</script>
TEXT;
}



?>