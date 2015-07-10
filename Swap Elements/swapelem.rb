class SwapElelem
  def initialize
    @lines = ""
    arquivio()
  end
  def arquivio
    file = ARGV[0]
    if File.exist?(file)
     @lines = IO.readlines(file)
    end
  end
  def swap_number
    @lines.each do |line|
      array_line = line.delete("\n").split(":")
      array_line.each do |l|
        l.strip!
      end
      numbers = array_line[0].split(" ")
      trans = array_line[1].split(",")
      trans.each do |row|
        indexes = row.split("-")
        temp1 = numbers[indexes[0].to_i]
        temp2 = numbers[indexes[1].to_i]
        numbers[indexes[0].to_i] = temp2
        numbers[indexes[1].to_i] = temp1
      end
      puts numbers.join(" ")
    end
  end
end

sw = SwapElelem.new
sw.swap_number
