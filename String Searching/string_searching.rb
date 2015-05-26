class StringSearching
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
  def string_searching
    @lines.each do |line|
     # puts line.delete!("\n").inspect
      array_strings = line.delete!("\n").split(",")
      if array_strings[1][0] == "*"
       array_strings[1][0]= "."
      end
      if array_strings[0].scan(Regexp.new(array_strings[1])).length > 0
      else 
       puts "false"
      end
    end
  end
end

ss = StringSearching.new
ss.string_searching

