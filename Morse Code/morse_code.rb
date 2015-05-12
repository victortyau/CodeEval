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
    morse = {'a' => '.-', 'b' => '-...', 'c' => '-.-.',
             'd' =>'-..', 'e' => '.','f' => '..-.',
             'g' => '--.','h' => '....','i' => '..',
             'j' => '.---','k' => '-.-','l' => '.-..',
             'm' => '--', 'n' => '-.', 'o' => '---',
             'p' => '.--.','q' => '--.-', 'r' => '.-.',
             's' => '...','t' => '-','u' => '..-', 'v' => '...-',             
             'w' => '.--', 'x' => '-..-','y' => '-.--','z' => '--..'}
    @lines.each do |line|
       array_line = line.delete!("\n").split(" ")
       cad = ""
       #array_line.inspect
       array_line.each do |a|
       puts morse.key(a)
       end
       puts cad
    end 
   end
end

mc = CodeMorse.new
mc.decode
