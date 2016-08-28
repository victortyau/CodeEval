class MajorW
  def initialize
  	@lines = ""
  	retrieve_file
  end

  def retrieve_file
  	file_name = ARGV[0]
    if File.exist?(file_name)
     @lines = IO.readlines(file_name)
    end  
  end

  def major_element
  	@lines.each do |line|
  	  array_number = line.delete("\n").split(",")
  	  length = array_number.length
  	  copy_array_number = array_number.uniq
  	  if array_number.length != copy_array_number.length
  	  	final_number = ""
  	  	copy_array_number.each do |elem|
  	  	 if array_number.count(elem) > (length/2)
  	  	 	puts elem
  	  	 	final_number = elem		
  	  	 end
  	  	end
  	  	puts "None" if final_number  == ""
  	  end
  	end
  end
end

m = Major.new
m.major_element