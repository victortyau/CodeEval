class SimpleSorting
  
  def initialize
    @lines = ""
    docs()
  end
   
  def docs
   file_name = ARGV[0]
   if File.exist?(file_name)
     @lines = IO.readlines(file_name)
   end 
  end
  
  def sorting
   @lines.each do |line|
    line = line.delete!("\n").split(" ")
    line = line.collect {|i| i.to_f }
    line = line.sort
    line.each do |l|
     print"%5.3f" % l 
     print " "
    end
    puts ""
   end 
  end 
end

ss = SimpleSorting.new
ss.sorting
