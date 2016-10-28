class StringList
  def initialize
   @lines = ""
   openFile()
  end

  def openFile
   file_name = ARGV[0]
   if File.exist?(file_name)
    @lines = File.open(file_name)
   end
  end

  def create_strings
   @lines.each do |line|
    data = line.delete("\n").split(",")
    puts create_words(data[1].chars.to_a.uniq.sort,data[0].to_i).sort.join(",") 
   end
  end
  
  def create_words(letter,number)
    if number > 0
     strings = []
     letter.each do |chars|
       strings += create_words(letter,number -1).map { |cs| chars + cs  }
     end 
    else
     strings = ['']
    end
    strings
  end

end

sl = StringList.new
sl.create_strings
