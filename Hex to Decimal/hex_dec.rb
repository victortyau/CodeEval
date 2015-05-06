class Convert
  
  def initialize
    @lines = ""
    get_file()
  end
  
  def get_file
   file_name = ARGV[0]
    if File.exist?(file_name)
      @lines = IO.readlines(file_name);
    end
  end

  def hex_dec
    @lines.each do |line|
      puts line.hex
    end
  end
end

c = Convert.new
c.hex_dec
