class RightmostChar
 def initialize
  @lines = ""
  gotFile()
 end

 def gotFile  
  file_name = ARGV[0]
  if File.exist?(file_name)
    @lines = IO.readlines(file_name);
  end 
 end

 def rightmost_char
  @lines.each do |line|
  	array_string = line.delete("\n").split(",")
  	string = array_string[0]
  	index = array_string[1]
  	value = string.rindex(index.to_s)
  	if !value.nil?
  	 puts value
  	else
  	  puts -1 
  	end
  end
 end
end

rmc = RightmostChar.new
rmc.rightmost_char

i = 12
j = 12

(1..i).each do |r|
  print r
  (2..j).each do |c|
    printf(STDOUT, '%4d', r * c)
  end
  print "\n"
end