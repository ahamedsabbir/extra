<?php
class vendor_samojugc_pagenation_class extends vendor_pagenation_class{
	public static function pagenation_function($page_link = false){
?>
<section class="bg-content">
	<div class="mx-auto">
		<!-- Pagination -->
		<div class="pagination-area">
			<div class="pagination wow fadeIn animated" data-wow-duration="2s" data-wow-delay="0.5s" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
<?php
$rows_count = self::$rows_count;
$item = self::$loop_item;
if($page_link == false){
	$page_link = "";	
	foreach($_GET as $get_key => $get_value){
		$page_link .= "$get_key=".$_GET[$get_key]."&";
	}
	$page_link = rtrim($page_link,"&");
	$page_link = "index.php?".$page_link;
}else{
	$page_link = BASE_URL.$page_link;
}
$total_page = ceil($rows_count/$item);
$pageno = isset($_GET['pageno'])? $_GET['pageno'] : 1;
$page = abs($pageno-2);
$page = $page == 0 ? 1 : $page;
?>
				<a class="<?php if($pageno <= 1){ echo 'd-none'; } ?>" href="<?php if($pageno <= 1){ echo '#'; } else { echo $page_link."&pageno=".($pageno - 1); } ?>"><i class='arrow-prev fas fa-long-arrow-alt-left'></i></a>	
<?php
$l = 0;
for($i=$page;$i<=$total_page;$i++){	
	$l++;
	if($l<$item){
		echo "<a class='' href='".$page_link."&pageno=".$i."'>".$i."</a>";
	}
}
?>
				<a class="<?php if($pageno >= $total_page){ echo 'd-none'; } ?>" href="<?php if($pageno >= $total_page){ echo '#'; } else { echo $page_link."&pageno=".($pageno + 1); } ?>"><i class='arrow-next fas fa-long-arrow-alt-right'></i></a>
			</div>
		</div>
	</div>
</section>
<div class="clearfix"></div>		
<?php
	}
}
?>
			
