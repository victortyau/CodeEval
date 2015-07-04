class FindWriter
 def initialize
  @lines = ""
  get_file()
 end

 def get_file
  file_name = ARGV[0]
  if File.exist?(file_name)
    @lines = IO.readlines(file_name);
   end 
 end

 def find_writer
 	@lines.each do |line|
     array_line = line.delete("\n").split("|")
 	 code = array_line[0]
 	 numbers = array_line[1].split(" ").map(&:to_i)
 	 name = ""
 	 numbers.each do |n|
 	 name += code[n-1]	
 	end
 	puts name
 	end
 end
end

fw = FindWriter.new
fw.find_writer