class Penultima
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

   def penultima
     @lines.each do |line|
	array_line = line.delete!("\n").split(" ")
	puts array_line[ array_line.length - 2 ]
     end
   end
end

p = Penultima.new
p.penultima
