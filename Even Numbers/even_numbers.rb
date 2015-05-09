class EvenNumbers
  def initialize
   @lines = ""
   archivio()
  end
  
  def archivio
    file_name = ARGV[0]
    if File.exist?(file_name)
      @lines = IO.readlines(file_name);
    end 
  end

  def even_numbers
    @lines.each do |line|
      numbers = line.delete!("\n").to_i
      if numbers%2==0
       puts 1
      else
       puts 0
      end  
    end
  end
end

en = EvenNumbers.new
en.even_numbers
