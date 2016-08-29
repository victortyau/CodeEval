class Cleanup
 
 def initialize
  @lines = ""
  fetch_data
 end

 def fetch_data
  file_name = ARGV[0]
  if File.exist?(file_name)
   @lines = IO.readlines(file_name);  
  end
 end

 def clean_up
  @lines.each do |line|
  	line.downcase!
  	puts line.gsub!(/[^A-Za-z]/, ' ').split.join(' ')

  end
 end
end

c = Cleanup.new
c.clean_up
