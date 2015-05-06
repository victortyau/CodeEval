class Lowercase
 
 def initialize
   @lines = ""
 end
 
 def read_file
   file = ARGV[0]
   if File.exist?(file)
    @lines = IO.readlines(file)
   end
 end
 
 def lowercase
   @lines.each do |line|
     puts line.downcase
   end
 end
end

l = Lowercase.new
l.read_file
l.lowercase
