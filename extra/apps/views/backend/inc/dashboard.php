<div class="px-4 py-3 my-5 text-center">
	<img class="rounded d-block mx-auto mb-4 img-thumbnail" src="<?php echo session_class::get("admin_photo"); ?>" alt="" width="150" height="150">
	<h1 class="display-5 fw-bold"><?php echo session_class::get("admin_name"); ?></h1>
	<div class="col-lg-6 mx-auto">
	  <p class="lead mb-4">Quickly design and customizthe world’s most popular front-end open source toolkit, featuring Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful JavaScript plugins.</p>
	  <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
		<button type="button" class="btn btn-primary btn-lg px-4 gap-3" onclick="window.location='<?php echo BASE_URL.session_class::get("admin_deshboard"); ?>'">Enter Your Personal Deshboard</button>
	  </div>
	</div>
</div>