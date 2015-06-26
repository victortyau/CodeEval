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
      puts numbers.inspect
      puts trans.inspect

    end
  end
end

sw = SwapElelem.new
sw.swap_number
