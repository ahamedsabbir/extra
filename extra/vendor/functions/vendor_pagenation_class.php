<?php
class vendor_pagenation_class{
	public static $rows_count;
	public static $loop_item;
	public static function pagenation_function($page_link = false){
?>
<div class="py-1">
    <div class="container">
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
echo "<div class='py-3' ><button class='btn mr-3'><i class='fa-solid fa-blog'></i>&nbsp;{$rows_count}</button>";
echo "<button class='btn'><i class='fa-solid fa-file-lines'></i>&nbsp;{$total_page}</button></div>";
echo "<ul class='pagination'>";
if($rows_count != 0){
	echo "<li class='page-item'><a class='page-link' href='".$page_link."&pageno=1'>First</a></li>";
}
?>
		<li class="page-item <?php if($pageno <= 1){ echo 'disabled'; } ?>">
			<a class="page-link" href="<?php if($pageno <= 1){ echo '#'; } else { echo $page_link."&pageno=".($pageno - 1); } ?>">
				<i class='arrow-prev fas fa-long-arrow-alt-left'></i>
			</a>
		</li>
		<li class="page-item <?php if($pageno >= $total_page){ echo 'disabled'; } ?>">
			<a class="page-link" href="<?php if($pageno >= $total_page){ echo '#'; } else { echo $page_link."&pageno=".($pageno + 1); } ?>">
				<i class='arrow-next fas fa-long-arrow-alt-right'></i>
			</a>
		</li>
<?php
$l = 0;
for($i=$page;$i<=$total_page;$i++){	
	$l++;
	if($l<$item){
		echo "<li class='page-item'><a class='page-link' href='".$page_link."&pageno=".$i."'>".$i."</a></li>";
	}
}
if($rows_count != 0){
	echo "<li class='page-item'><a class='page-link' href='".$page_link."&pageno=".$total_page."'>last</a></li>"; 
}	
echo "</ul>";
?>
		<form action="<?php echo $page_link; ?>" method="POST">
			<button type="submit" class="btn btn-primary"><i class="fas fa-link"></i></button>
			<input class="btn btn-secondary" type="number" name="pageno" value="1" min="1" max="<?php echo $total_page; ?>"/>
		</form>     
    </div>   
</div> 
<?php
	}
	public static function simple_pagenation_function($rows_count, $page_link = false){
?>
<div class="py-1">
    <div class="container">
<?php
$rows_count = $rows_count;
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
echo "<div class='py-3' ><button class='btn mr-3'><i class='fa-solid fa-blog'></i>&nbsp;{$rows_count}</button>";
echo "<button class='btn'><i class='fa-solid fa-file-lines'></i>&nbsp;{$total_page}</button></div>";
echo "<ul class='pagination'>";
if($rows_count != 0){
	echo "<li class='page-item'><a class='page-link' href='".$page_link."&pageno=1'>First</a></li>";
}
?>
		<li class="page-item <?php if($pageno <= 1){ echo 'disabled'; } ?>">
			<a class="page-link" href="<?php if($pageno <= 1){ echo '#'; } else { echo $page_link."&pageno=".($pageno - 1); } ?>">
				<i class='arrow-prev fas fa-long-arrow-alt-left'></i>
			</a>
		</li>
		<li class="page-item <?php if($pageno >= $total_page){ echo 'disabled'; } ?>">
			<a class="page-link" href="<?php if($pageno >= $total_page){ echo '#'; } else { echo $page_link."&pageno=".($pageno + 1); } ?>">
				<i class='arrow-next fas fa-long-arrow-alt-right'></i>
			</a>
		</li>
<?php
$l = 0;
for($i=$page;$i<=$total_page;$i++){	
	$l++;
	if($l<$item){
		echo "<li class='page-item'><a class='page-link' href='".$page_link."&pageno=".$i."'>".$i."</a></li>";
	}
}
if($rows_count != 0){
	echo "<li class='page-item'><a class='page-link' href='".$page_link."&pageno=".$total_page."'>last</a></li>"; 
}	
echo "</ul>";
?>
		<form action="<?php echo $page_link; ?>" method="POST">
			<button type="submit" class="btn btn-primary"><i class="fas fa-link"></i></button>
			<input class="btn btn-secondary" type="number" name="pageno" value="1" min="1" max="<?php echo $total_page; ?>"/>
		</form>     
    </div>   
</div> 
<?php
	}
}
?>