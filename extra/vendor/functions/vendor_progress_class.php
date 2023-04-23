<?php
class vendor_progress_class{
	public static function progress_function($id, $fun){
      echo <<<HTML
<div class='progress-wrapper py-1'>
    <div id='progress-bar-file1' class='progress py-1'></div>
</div>
<style>
.progress-wrapper {
	color:white;
    width:100%;
}
.progress-wrapper .progress {
	height:30px;
    background-color:red;
    width:0%;
    padding:5px 0px 5px 0px;
}
</style>
<script>
function $fun() {
    var formdata = new FormData();
    formdata.append('$id', $('#$id')[0].files[0]);
    var request = new XMLHttpRequest();
    request.upload.addEventListener('progress', function (e) {
        var file1Size = $('#$id')[0].files[0].size;
        if (e.loaded <= file1Size) {
            var percent = Math.round(e.loaded / file1Size * 100);
            $('#progress-bar-file1').width(percent + '%').html(" " + percent + '%');
        } 
        if(e.loaded == e.total){
            $('#progress-bar-file1').width(100 + '%').html(100 + '%');
        }
    });   
    request.open('post', '/echo/html/');
    request.timeout = 45000;
    request.send(formdata);
}
</script>
HTML;
    }
}
?>