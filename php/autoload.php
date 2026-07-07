<?php

spl_autoload_register(function ($classname)
{
    $file = BASE_DIR . "/" . $classname . ".php"; 	
    if(file_exists($file))
        include $file;
    else
	throw new Exception("File not found");    
})
