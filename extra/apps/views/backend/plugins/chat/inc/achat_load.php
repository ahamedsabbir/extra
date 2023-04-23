<?php
if(isset($_GET["visitor_id"])){
?>
<div class="page-content page-container" id="page-content">
    <div class="padding">
        <div class="d-flex justify-content-center">
                <div class="box box-warning direct-chat direct-chat-warning">
                    <div class="box-header with-border">
						<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalLong">file</button>
						<div class="box-tools pull-right"> <span data-toggle="tooltip" title="" class="badge bg-yellow" data-original-title="3 New Messages">chat</span></div>
                    </div>
                    <div class="box-body">
                        <div class="direct-chat-messages chatbox" style="padding-right:40px;">
							<ul style="list-style:none;" id="getajaxdata">                          
								<?php vendor_chat_class::admin_reply_function($framework_chat_datatable, $_GET["visitor_id"]); ?>
							</ul>
                        </div>
                    </div>
                    <div class="box-footer">
                        <form id="" method="POST" action="index.php?url=plugins_chat_class/visitor_send_file_function/" enctype="multipart/form-data">
                            <div class="input-group">
								<input id="visittxt" type="text" name="visitor_id" class="d-none form-control mr-2" value="<?php echo $_GET["visitor_id"]; ?>"> 
								<input id="chattxt" type="text" name="chat" class="form-control mr-2" value="<?php echo vendor_code_class::base64url_decode($upload_source);?>"> 
								<span class="input-group-btn mr-2"> 
									<submit id="setajaxdata" class="btn btn-main btn-rounded">Massege</submit>
								</span> 
							</div>
                        </form>
                    </div>
             </div>
        </div>
  	</div>
  </div>
<?php
   vendor_ajax_class::ajax_function("plugins_chat_class", "admin_ajax_reply_function", array("chattxt" => "chat", "visittxt" => "visitor_id"));
}
?>
<script type="text/javascript">
var auto_refresh = setInterval(
function ()
{
$('#getajaxdata').load("index.php?url=plugins_chat_class/admin_live_page_function/<?php echo $_GET["visitor_id"]; ?>").fadeIn("slow");
}, 10000); // refresh every 10000 milliseconds
</script>