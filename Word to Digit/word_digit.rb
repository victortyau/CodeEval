class WordDigit

   def initialize
    @lines = ""
    @digits = { "zero" => "0", "one" => "1",
    "two" => "2", "three" => "3", "four" => "4",
    "five" => "5", "six" => "6", "seven" => "7",
    "eight" => "8", "nine" => "9"}
    got_file()
   end
  
   def got_file
    file_name = ARGV[0]
     if File.exist?(file_name)
       @lines = IO.readlines(file_name)
     end 
   end
   
   def word_digit
     @lines.each do |line|
       array_lines = line.delete!("\n").split(";")
       cad = ""
       array_lines.each do |al|
          cad += @digits[al]
        end
       puts cad   
     end 
   end
end

wd = WordDigit.new
wd.word_digit
