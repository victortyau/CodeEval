class HappyNumbers
  
  def initialize
    @lines = ""
    got_file()
  end
  
  def got_file
   file_name = ARGV[0]
    if File.exist?(file_name)
      @lines = IO.readlines(file_name);
    end 
  end

  def happy_numbers
    @lines.each do |line|
      number = line.delete!("\n")
      if number == 1
        puts number
      else
        puts get_numbers(number) 
      end
    end 
  end

  def get_numbers(number)
    number = number.to_s.split("")
    i = 1
    temp = 0
    while i <= 9
     number.each do |n|
       temp += n.to_i ** 2
     end
     
     if temp == 1
       number = temp 
       break
     elsif i == 9
      number = 0
     else
       number = temp.to_s.split("")
       temp = 0
     end
     i += 1
    end
    return number
  end
end

hn = HappyNumbers.new
hn.happy_numbers
