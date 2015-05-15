class SwapNumbers
  def initialize
    @lines = ""
    fichero()
  end

  def fichero
   file_name = ARGV[0]
   if File.exist?(file_name)
     @lines = IO.readlines(file_name);
   end  
  end

  def swap_numbers
    @lines.each do |line|
       line = line.delete("\n").split(" ")
      # puts line.inspect
       line.each do |l|
        chars = l.split("")
        temp1 = chars[0]
	temp2 = chars[chars.length - 1]
        chars[0] = temp2
        chars[chars.length - 1] = temp1
        print chars.join("")+" "
        	
       end
       puts ""
    end
  end
end

sn = SwapNumbers.new
sn.swap_numbers
