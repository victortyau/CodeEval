class UniqueElements
  
 def initialize
   @lines = ""
   fetch_data()
 end

 def fetch_data
   file_name = ARGV[0]
   if File.exist?(file_name)
     @lines = IO.readlines(file_name);
   end 
 end

 def unique_elements
  @lines.each do |line|
   array_char =  line.delete!("\n").split(",")
   array_char = array_char.uniq
   puts array_char.join(",")
  end 
 end
end

ue = UniqueElements.new
ue.unique_elements
