class  Mix
  def initialize
    @lines = ""
    open_file()
  end

  def open_file
   file_name = ARGV[0]
    if File.exist?(file_name)
      @lines = IO.readlines(file_name);
    end 
  end

  def split_data
    @lines.each do |line|
     line.delete!("\n")
     array = line.split(",")
     string = ""
     number = ""
     array.each do |elem|
       if elem =~ /\d/
          number += elem + ","
       else
         string += elem + ","
       end
     end
      number =number.chomp(',')
      string = string.chomp(',')
      if number.length > 0 && string.length == 0
        puts number.gsub(/\s+/, "")
      elsif number.length == 0 && string.length > 0
        puts string.gsub(/\s+/, "")
      else
        puts string.gsub(/\s+/, "") + "|" +number.gsub(/\s+/, "")
      end   
      
    end
  end
end

m = Mix.new
m.split_data
 
