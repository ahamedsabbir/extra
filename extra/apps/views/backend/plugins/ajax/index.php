

<div>
	<input id="searchid01" type="text" name="search" class="form-control mr-2">
	<div id="searchresultid01"></div>
	<?php searchAjax(); ?>
</div>




<div>
	<input id="uploadid01" type="file" name="file" class="form-control mr-2" onchange="postFiles()">
	<div id="uploadresultid01"></div>
	<?php vendor_progress_class::progress_function("uploadid01", "postFiles"); ?>
	<?php uploadAjax(); ?>
</div>
