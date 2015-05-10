<?php
function retrieveFile($argv){
 if(count($argv) == 2){
    $signs = array("\n","\r");
    if(file_exists($argv[1])){
     $doc = $argv[1];
     $file = file($doc); 
     for($i = 0; $i < count($file); $i++){
      $file[$i] = str_replace($signs,"",$file[$i]);
      validate_mail($file[$i]);
     }
    }  
  }
}

function validate_mail($email){
 if (filter_var($email, FILTER_VALIDATE_EMAIL)){
   echo "true \n";
 }
 else{
   echo "false \n";
 } 
}

retrieveFile($argv);
?>
