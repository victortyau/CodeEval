class LongestLine
  def initialize
   @lines = ""
   retrieve_data()
  end
  
  def retrieve_data
   file_name = ARGV[0]
    if File.exist?(file_name)
      @lines = IO.readlines(file_name);
    end 
  end

  def longest_list
   i = 0
   number = 0
   data = {}
   @lines.each do |line|
     if i == 0
       number = line.delete!("\n").to_i
     else
       data[line.delete!("\n").to_s] = line.to_s.length
     end
     i+=1
   end
   j = 1
   data = data.sort_by(&:last)
   data =  data.reverse
    data.each do |key, value|
     if j <= number
       puts key
     end
    j+=1
   end 
  end
end

ll = LongestLine.new
ll.longest_list
