class StringList
  
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
  
  def string_list
    @lines.each do |line|
      array_line = line.delete("\n").split(",")
      i = 0
      word = ""  
      while i < array_line[0].to_i
       word += array_line[1][i]
       i += 1
      end
      if word.length == 1
        puts word
      else
       temp = word 
      end
    end
  end
end

sl = StringList.new
sl.string_list
