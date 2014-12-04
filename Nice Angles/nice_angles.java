import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


class Main{

  public void retrieveFile(String fileName) throws IOException{
      List<String> lines;
      lines = new ArrayList<>();
      if(new File(fileName).isFile()){
    	String line;
        BufferedReader reader;
        try{
            reader = new BufferedReader(new FileReader(fileName));
            while ((line = reader.readLine()) != null){
                lines.add(line);
            }
            createHours(lines);
            reader.close();
        }catch(FileNotFoundException e){
        }
      }
  }

  public void createHours(List<String> lines){
      String number;
      int hour;
      double degree;
      int minutes;
      int seconds;
      String results;
      for( int i = 0; i < lines.size(); i++ ){

          number = lines.get(i);
          hour = (int)Double.parseDouble(number);
          degree = Double.parseDouble(number);
          minutes = (int) ((degree  -  hour) * 60);
          seconds = (int) ((degree - hour - ((double)minutes/60)) * 3600);
          results = String.valueOf(hour)+".";
          if( minutes < 10 ){  results += "0";  }
          results += String.valueOf(minutes)+"'";
          if( seconds < 10) {  results += "0";  }
          results += String.valueOf(seconds)+'"';
          System.out.println(results);

      }
  }

  public static void main(String[] args){
      Main na;
      na = new Main();
      if(args.length == 1){
          try {
              na.retrieveFile(args[0]);
          } catch (IOException ex) {
              Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
          }
      }
  }
}
