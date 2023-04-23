<?php
class vendor_system_class{
    public static function find($dir, $targetFile){
      	$targetFile = $targetFile.'.php';
        $filePath = null;

        // pass function ref &$search so we can make recursive call
        // pass &$filePath ref so we can get rid of it as class param
        $search = function ($dir, $targetFile) use (&$search, &$filePath) {
            if (null !== $filePath) return; // early termination
            $files = scandir($dir);
            foreach ($files as $key => $file) {
                if ($file == "." || $file == "..") continue;
                $path = realpath($dir . DIRECTORY_SEPARATOR . $file);
                if (is_file($path)) {
                    if ($file === $targetFile) {
                        $filePath = $path;
                        break;
                    }
                } else {
                    $search($path, $targetFile);
                }
            }
        };

        $search($dir, $targetFile); // invoke the function
		$folderPath = dirname($filePath);
        return $folderPath;
    }
}