class LongWord
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

  def longest
    @lines.each do |line|
      array_line = line.delete!("\n").split(" ")
      puts array_line.max_by(&:length)
    end
  end
end

lw = LongWord.new
lw.longest
