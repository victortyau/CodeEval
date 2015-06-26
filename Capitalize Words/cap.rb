class CapWords
	def initialize
		@lines = ""
		archivo()
	end
	def archivo
	  file_name = ARGV[0]
      if File.exist?(file_name)
       @lines = IO.readlines(file_name);
      end 
	end
	def mayusc
		@lines.each do |line|
		if !line.nil?
			array_line = line.delete("\n").split(" ")
			data = array_line.map(&:capitalize)
		end
		puts data.join(" ")
		end
	end
end

cw = CapWords.new
cw.mayusc