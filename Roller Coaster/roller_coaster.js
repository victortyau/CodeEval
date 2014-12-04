var fs = require('fs');
var path = require('path');


function getFile(){

    if(process.argv.length == 3){

      var filename = process.argv[2];

      if (fs.existsSync(filename)) {

        fs.readFile(filename,'utf8',function(err,data){

          if (err) {
            return console.log(err);
          }
          else{
            var array_lines = data.split('\n');
            camelCase(array_lines);
          }
        });
      }
    }
}

function camelCase(array_lines){
  var regexp = /[A-Za-z]/;
  var string = "";
  var index = 0;
  var lines;
  for( var i =0; i < array_lines.length; i++ ){

    if( array_lines[i].length > 0 ){
        lines = array_lines[i].split("");
        for(var j = 0; j < lines.length; j++){
          if(regexp.test(lines[j])){

            if(index%2==0){
              string += lines[j].toUpperCase();
              index++;
            }
            else{
              string += lines[j].toLowerCase();
              index++;
            }
          }
          else{
            string += lines[j];
          }
        }
        string += "\n";
        index = 0;
        }
    }
    console.log(string);
}


getFile();
