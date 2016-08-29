class Armstrong
  
  def initialize
    @lines = ""
    get_data
  end

  def get_data
  	file_name = ARGV[0]
    @lines = IO.readlines(file_name) if File.exist?(file_name)
  end

  def armstrong_number
  	@lines.each do |line|
  	  array_number = line.delete!("\n").split("")
  	  exp = array_number.length
  	  result = 0
  	  current_number = ""
  	  array_number.each do |number|
  	  	current_number = current_number + number
   	  	result = result + number.to_i ** exp
  	  end
  	  if current_number.to_i == result
  	  	puts "True"
  	  else
  	    puts "False"
  	  end
  	end
  end
end

a = Armstrong.new
a.armstrong_number