<?php
function getFile($argv){
    if(count($argv) == 2){
      $signs = array('.','-',' ',"\n","\r");
      if(file_exists($argv[1])){
       $file = $argv[1];
       $strings = implode('**',file($argv[1]));
       $strings = str_replace($signs,"",$strings);
       createNumbers($strings);
      }
    }
}

function createNumbers($strings){
   $array_numbers = explode('**',$strings);

   $ascii_array = array(
     1 => array("--*--","-**--","--*--","--*--","-***-","-----"),
     2 => array("***--","---*-","-**--","*----","****-","-----"),
     3 => array("***--","---*-","-**--","---*-","***--","-----"),
     4 => array("-*---","*--*-","****-","---*-","---*-","-----"),
     5 => array("****-","*----","***--","---*-","***--","-----"),
     6 => array("-**--","*----","***--","*--*-","-**--","-----"),
     7 => array("****-","---*-","--*--","-*---","-*---","-----"),
     8 => array("-**--","*--*-","-**--","*--*-","-**--","-----"),
     9 => array("-**--","*--*-","-***-","---*-","-**--","-----"),
     0 => array("-**--","*--*-","*--*-","*--*-","-**--","-----"),
   );



   $i = 0;
   $j = 0;
   $k = 0;
   $string = array();
   $string = "";
   while($i < count($array_numbers)){
     while($k < 6){
       while( $j < strlen($array_numbers[$i])){
         $string .= $ascii_array[$array_numbers[$i][$j]][$k];
         $j++;
      }
      $j = 0;
      $string .= "\n";
      $k++;
     }
     $k = 0;
     $i++;
   }
    echo $string;
}

getFile($argv);
?>
