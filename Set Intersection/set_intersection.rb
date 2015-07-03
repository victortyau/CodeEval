class SetIntersection
  
  def initialize
  	@lines = ""
  	readFile()
  end

  def readFile
  	file_name = ARGV[0]
    if File.exist?(file_name)
      @lines = IO.readlines(file_name);
    end 
  end

  def set_intersection
  	@lines.each do |line|
  		#puts line.inspect
  		numbers = line.delete("\n").split(";")
  		#puts numbers.inspect
  		 first = numbers[0].split(",")
  		 second = numbers[1].split(",")
  		 puts ( first & second ).join(",")
  	end
  end
end

si = SetIntersection.new
si.set_intersection