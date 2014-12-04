
 def open_file
   file_name = ARGV[0]
    if File.exist?(file_name)
      lines = IO.readlines(file_name);
      process_file(lines)
    end
 end

 def process_file(array_numbers)
    index = 0
    cadena = ""
    flag = ""
    array_numbers.each do |row|
      binary = row.split(" ")
      binary.each do |digit|

        if index%2 == 0
          flag = digit
        elsif index%2 == 1
          if flag.to_s === "00"
            cadena.concat("1"*digit.to_s.length)
          elsif flag.to_s === "0"
            cadena.concat(digit.to_s)
          end
        end
        index = index + 1
      end
      puts cadena.to_i(2)
      index = 0
      cadena = ""
    end
 end

open_file()
