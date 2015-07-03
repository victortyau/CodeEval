class SplitNumbers
 
 def initialize
  @lines = ""
  openFile()
 end

 def openFile
  file_name = ARGV[0]
  if File.exist?(file_name)
    @lines = IO.readlines(file_name);
  end 
 end

 def split_number
 	@lines.each do |line|
 	  array_string = line.delete("\n").split(" ")

 	  if !array_string[1].index("+").nil?
 	  	index = array_string[1].index("+")
 	  	sign = "+"
 	  else
 	  	index = array_string[1].index("-")
 	  	sign = "-"
 	  end 

 	  array_string[0].insert(index,sign)
 	  numbers = array_string[0].split(sign)
 	  if sign == "+"
 	  	puts numbers[0].to_i + numbers[1].to_i
 	  else
 	  	puts numbers[0].to_i - numbers[1].to_i
 	  end	  
 	end
 end
end

sp = SplitNumbers.new
sp.split_number