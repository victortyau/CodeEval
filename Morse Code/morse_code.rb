class CodeMorse
   def initialize
     @lines = ""
     fichero()
   end

   def fichero
    file_name = ARGV[0]
    if File.exist?(file_name)
     @lines = IO.readlines(file_name)
    end  
   end

   def decode
    morse = { "a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..",
	            "e" => ".", "f" => "..-.", "g" => "--.", "h" => "....",
	            "i" => "..", "j" => ".---", "k" => "-.-", "l" => ".-..",
	            "m" => "--", "n" => "-.", "o" => "---", "p" => ".--.",
	            "q" => "--.-", "r" => ".-.", "s" => "...", "t" => "-",
	            "u" => "..-", "v" => "...-", "w" => ".--", "x" => "-..-",
              "y" => "-.--", "z" => "--..", " " => " ", "1" => ".----",
	            "2" => "..---","3" => "...--", "4" => "....-", "5" => ".....",
	            "6" => "-....","7" => "--...", "8" => "---..", "9" => "----.",
	            "0" => "-----" }
    
    puts @lines.inspect
    
    @lines.each do |line|
       positions = line.delete("\n").enum_for(:scan, /[\.|\-][ ]{2,}[\.|\-]/).map { Regexp.last_match.begin(0) }
       puts positions.inspect
       array_line = line.delete!("\n").split(" ")
       cad = ""
       array_line.each do |a|
        cad += morse.key(a.to_s)
       end
       puts cad.upcase
    end 
   end
end

mc = CodeMorse.new
mc.decode


