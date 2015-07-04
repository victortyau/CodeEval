class SwapCase
 
 def initialize
  @lines = ""
  readLines()  
 end

 def readLines
  file_name = ARGV[0]
  if File.exist?(file_name)
   @lines = IO.readlines(file_name);
  end 	
 end

 def swapcase
  @lines.each do |line|
  	puts line.swapcase
  end
 end
end

sc = SwapCase.new
sc.swapcase