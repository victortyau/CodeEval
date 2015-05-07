class MultiList
  def initialize
    @lines = ""
    read_file()
  end

  def read_file
    file_name = ARGV[0]
    if File.exist?(file_name)
      @lines = IO.readlines(file_name);
    end  
  end
  
  def sum_list
   @lines.each do |line|
     array_numbers = line.delete!("\n").split("|")
     a1 = array_numbers[0].strip.split(" ")
     a2 = array_numbers[1].strip.split(" ")
     i = 0
     cad = ""
     while i < a1.length
      cad += ( a1[i].to_i * a2[i].to_i ).to_s + " "
      i += 1
     end
     puts cad
   end
  end
end

ml = MultiList.new
ml.sum_list
