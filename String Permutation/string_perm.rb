class StringPermutation
  def initialize
    @lines = ""
    archivio()
  end

  def archivio
   file_name = ARGV[0]
   if File.exist?(file_name)
     @lines = IO.readlines(file_name)
   end 
  end

  def sperm
    @lines.each do |line|
     line.delete!("\n")
     array_line = line.chars.to_a.permutation.map &:join
     puts array_line.sort.join(",")   
    end
  end
end

sp = StringPermutation.new
sp.sperm

