<!DOCTYPE html>
<html>
	<head>
		<?php include(backend_class::inc("head", $plugins_type, $plugins)) ?>
	</head>
	<body class="" style="background:brown;">
		<?php include(backend_class::inc("header", $plugins_type, $plugins)) ?>
		<section class="container py-3">
			<table id="filemanager" class="display nowrap">
					<thead>
						<tr>
						  <th colspan="7">
<?php
$link_array = rtrim($folder_src, "/");
$link_array = explode("/", $link_array);
array_pop($link_array);
?>
							<a href="<?php echo BASE_URL.'plugins_xplore_class/index_page_function/xplore/&get_url='.realpath(implode('/', $link_array)); ?>" class="btn" >
								<span>Back</span>
							</a>
						</th>
						</tr>
						<tr style="background:black; color:white;">
							<th colspan="7" class="text-center"><?php echo "root/".$folder_src; ?></th>
						</tr>
						<tr style="background:black; color:white;">
						  <th>SN</th>
						  <th>Access</th>
						  <th class="text-center">Name</th>
						  <th class="text-center">Extension</th>
						  <th class="text-center">Size</th>
						  <th class="text-center">Update</th>
						  <th class="text-center">Action</th>
						</tr>
					</thead>
					<tbody>			
<?php
$i = 1;
if(isset($xplore)){
foreach($xplore as $file_value){
	if($file_value['type'] == "folder"){
?>
						<tr>
						  <td><?php echo $i++; ?></td>
						  <td><?php echo vendor_security_class::file_access($folder_src.$file_value['name']); ?></td>
						  <td scope="row">
							<div class="dropdown">
							  <button ondblclick="window.location='<?php echo BASE_URL."plugins_xplore_class/index_page_function/xplore/&get_url=".$file_value['full_url']; ?>'" class="btn btn-outline-dark" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<span title="<?php echo $file_value['name']; ?>"><img src="<?php echo $file_value['icon']; ?>" /> <?php echo $file_value['name']; ?></span>
							  </button>
							  <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
								<a href="<?php echo BASE_URL."plugins_xplore_class/index_page_function/xplore/&get_url=".$file_value['full_url']; ?>"><button class="dropdown-item" type="button"><i class="fa-solid fa-folder-open"></i> Open</button></a>
								<a href="" data-toggle="modal" data-target="#rename_to<?php echo $file_value['name']; ?>" ><button class="dropdown-item" type="button"><i class="fa-solid fa-file-signature"></i> Rename</button></a>
								<a href="<?php echo BASE_URL."plugins_xplore_class/zip_function/xplore/&get_url=".$folder_url."&folder=".$file_value['name']; ?>"><button class="dropdown-item" type="button"><i class="fa-solid fa-file-zipper"></i> Zip</button></a>
								<a href="" data-toggle="modal" onclick="copyToClipboard()" data-target="#copy_to<?php echo $file_value['name']; ?>" ><button class="dropdown-item" type="button"><i class="fa-solid fa-copy"></i> Copy</button></a>
								<a href="" data-toggle="modal" onclick="copyToClipboard()" data-target="#move_to<?php echo $file_value['name']; ?>" ><button class="dropdown-item" type="button"><i class="fa-brands fa-gg"></i> Move</button></a>
								<a onclick="return confirm('Are you sure you want to delete this item?');" href="<?php echo BASE_URL."plugins_xplore_class/del_dir_function/xplore/&get_url=".$folder_url."&folder=".$file_value['name']; ?>"><button class="dropdown-item" type="button"><i class="fa-solid fa-folder-minus"></i> Delete</button></a>
								<a onclick="return confirm('Are you sure you want to delete this item?');" href="<?php echo BASE_URL."plugins_xplore_class/dir_move_recyclebin_function/xplore/&get_url=".$folder_url."&folder=".$file_value['name']; ?>"><button class="dropdown-item" type="button"><i class="fa-solid fa-trash"></i> RecycleBin</button></a>
							  </div>
							</div>
						  </td>
						  <td>FOLDER</td>
						  <td>--</td>
						  <td>--</td>
						  <td>
							<button onclick="window.location='<?php echo BASE_URL."plugins_xplore_class/index_page_function/xplore/&get_url=".$file_value['full_url']; ?>'" type="button" class="btn btn-primary"><i class="fa-solid fa-box-open"></i></button>
							<button onclick="window.location='<?php echo BASE_URL."plugins_xplore_class/zip_function/xplore/&get_url=".$folder_url."&folder=".$file_value['name']; ?>'" type="button" class="btn btn-success"><i class="fa-solid fa-file-zipper"></i></button>
							<a onclick="return confirm('Are you sure you want to delete this item?');" href="<?php echo BASE_URL."plugins_xplore_class/dir_move_recyclebin_function/xplore/&get_url=".$folder_url."&folder=".$file_value['name']; ?>" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i></a>
						  </td>
						</tr>
						<?php include(backend_class::inc("folder_models", $plugins_type, $plugins)) ?>
<?php
}else{
?>
			<tr>
			  <td><?php echo $i++; ?></td>
			  <td><?php echo vendor_security_class::file_access($file_value['src']); ?></td>
			  <td scope="row">
				<div class="dropdown">
				  <button ondblclick="window.location='<?php echo BASE_URL."plugins_preview_class/index_page_function/index/&src=".$file_value['src']."&extention=".$file_value['extention']; ?>'" class="btn btn-outline-success" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span title="<?php echo $file_value['name']; ?>"><img src="<?php echo $file_value['icon']; ?>" /> <?php echo vendor_string_class::text_shorten($file_value['name'], 40); ?></span>
				  </button> 
<?php
if(date('j/m/y', $file_value['date']) == date('j/m/y')){
	echo "<span class='badge badge-danger'><i class='fa-solid fa-square-pen'></i>&nbsp;".date('g:i a', $file_value['date'])."</span>";
}
?>
				  <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
					<a href="<?php echo BASE_URL."plugins_preview_class/index_page_function/index/&src=".$file_value['src']."&extention=".$file_value['extention']; ?>"><button class="dropdown-item" type="button"><i class="fa-solid fa-book-open"></i> Open</button></a>
					<?php
						$array_key = array("src", "extention");
						$array_value = array($file_value['src'], $file_value['extention']);
					?>
					<a href="<?php echo BASE_URL.'plugins_editor_class/index_page_function/index/'.vendor_code_class::argu_encode($array_key).'/'.vendor_code_class::argu_encode($array_value); ?>"><button class="dropdown-item" type="button"><i class="fa-solid fa-pen-to-square"></i> Edite</button></a>
					<?php
                    if($file_value['extention'] == "zip"){
                    ?>
                    	<a href="<?php echo BASE_URL."plugins_xplore_class/unzip_function/xplore/&get_url=".$folder_url."&file=".$file_value['name']; ?>"><button class="dropdown-item" type="button"><i class="fa-solid fa-file-zipper"></i> Unzip</button></a>
                    <?php
                    }
                    ?>
					<a href="" data-toggle="modal" data-target="#rename_to<?php echo $file_value['name']; ?>" ><button class="dropdown-item" type="button"><i class="fa-solid fa-file-signature"></i> Rename</button></a>
					<a href="<?php echo $file_value['src']; ?>"><button class="dropdown-item" type="button"><i class="fa-solid fa-cloud-arrow-down"></i> Download</button></a>
					<a href="" data-toggle="modal" data-target="#copy_to<?php echo $file_value['name']; ?>" ><button class="dropdown-item" type="button"><i class="fa-solid fa-copy"></i>  Copy</button></a>
					<a href="" data-toggle="modal" data-target="#move_to<?php echo $file_value['name']; ?>" ><button class="dropdown-item" type="button"><i class="fa-brands fa-gg"></i> Move</button></a>
					<a href="" data-toggle="modal" data-target="#send_to<?php echo $file_value['name']; ?>" ><button class="dropdown-item" type="button"><i class="fa-solid fa-share"></i> Send</button></a>
					<a href="<?php echo BASE_URL."plugins_xplore_class/del_file_function/xplore/&get_url=".$folder_url."&file=".$file_value['name']; ?>" onclick="return confirm('Are you sure you want to delete this item?');"><button class="dropdown-item" type="button"><i class="fa-solid fa-close"></i> Delete</button></a>
                    <a href="<?php echo BASE_URL."plugins_xplore_class/file_move_recyclebin_function/xplore/&get_url=".$folder_url."&file=".$file_value['name']; ?>" onclick="return confirm('Are you sure you want to delete this item?');"><button class="dropdown-item" type="button"><i class="fa-solid fa-trash"></i> RecycleBin</button></a>
				  </div>
				</div>
			  </td>
			  <td><?php echo strtoupper($file_value['extention']); ?></td>
			  <td><?php echo $file_value['size']; ?></td>
              <td><?php echo vendor_date_class::only_date($file_value['date']); ?></td>
			  <td>
				<button onclick="window.location='<?php echo BASE_URL."plugins_preview_class/index_page_function/index/&src=".$file_value['src']."&extention=".$file_value['extention']; ?>'" type="button" class="btn btn-primary"><i class="fa-solid fa-box-open"></i></button>
				<?php
                    if($file_value['extention'] == "zip"){
                ?>
					<button onclick="window.location='<?php echo BASE_URL."plugins_xplore_class/unzip_function/xplore/&get_url=".$folder_url."&file=".$file_value['name']; ?>'" type="button" class="btn btn-warning"><i class="fa-solid fa-file-zipper"></i></button>
					<button onclick="window.location='<?php echo BASE_URL."plugins_xplore_class/plugins_install_function/xplore/&get_url=".$folder_url."&file=".$file_value['name']; ?>'" type="button" class="btn btn-warning"><i class="fa-solid fa-file-zipper"></i></button>
				<?php
					}else{
				?>
					<button onclick="window.location='<?php echo BASE_URL.'plugins_editor_class/index_page_function/index/'.vendor_code_class::argu_encode($array_key).'/'.vendor_code_class::argu_encode($array_value); ?>'" type="button" class="btn btn-warning"><i class="fa-solid fa-pen-to-square"></i></button>
				<?php
					}
				?>
				<a onclick="return confirm('Are you sure you want to delete this item?');" href="<?php echo BASE_URL."plugins_xplore_class/file_move_recyclebin_function/xplore/&get_url=".$folder_url."&file=".$file_value['name']; ?>" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i></a>
			  </td>
			</tr>
			<?php include(backend_class::inc("file_models", $plugins_type, $plugins)) ?>
<?php
		}
	}
}else{
?>
					<tr>
						<td class="text-center" colspan="7" style="background:red; color:white;">
							<b>Empty</b>
						</td>
					</tr>
<?php
}
?>	
			</tbody>
			<tfoot>
				<tr style="background:black; color:white;">
					<th class="text-center" colspan="7">
						<i>Total Space <?php echo vendor_file_class::convert_memory($total_space); ?></i>
						<i>Free Space <?php echo vendor_file_class::convert_memory($free_space); ?></i>
					</th>
				</tr>
			</tfoot>
		</table>
	</section>
	<?php include(backend_class::inc("footer")) ?>
	<?php include(backend_class::inc("foot", $plugins_type, $plugins)); ?>
	</body>
</html>
