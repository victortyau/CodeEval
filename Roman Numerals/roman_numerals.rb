class RomanNumbers
  def initialize
     @lines = ""
     arquivo()
  end
  def arquivo
   file_name = ARGV[0]
   if File.exist?(file_name)
     @lines = IO.readlines(file_name);
   end  
  end
  def show_numbers
    @lines.each do |line|
      puts romanize(line.delete!("\n").to_i)
    end
  end
  def romanize n
    roman_numbers = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I",  
     }

     roman = ""

   
    roman = ""
    roman_numbers.each do |value, letter|
      roman << letter*(n / value)
      n = n % value
    end
   return roman
   end 
end

rn = RomanNumbers.new
rn.show_numbers
