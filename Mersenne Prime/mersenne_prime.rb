require 'prime'

class Mersenne
 
 def initialize
   @lines = ""
   fetch_data
 end

 def fetch_data
   file_name = ARGV[0]
   @lines = IO.readlines(file_name) if File.exist?(file_name)
 end

 def mersenne_number
   @lines.each do |line|
     number = line.delete("\n")
     
   end
 end


end

m = Mersenne.new
m.mersenne_number