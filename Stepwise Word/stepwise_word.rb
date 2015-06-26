class StepwiseWord
  
  def initialize
  	@lines = ""
  	arquivio()
  end
  
  def arquivio
  	file_name = ARGV[0]
    if File.exist?(file_name)
      @lines = IO.readlines(file_name);
    end 
  end
  
  def stepwise_word
  	@lines.each do |line|
  	  array_line = line.delete("\n").split(" ")
  	  word = array_line.max{|a, b| a.length <=> b.length}
  	  word = word.split("")
  	  temp = ""
  	  index = 0
  	  word.each do |w|
		if index > 0
		 temp += "*" * index
		 temp += w
		 temp += " "
		else
		 temp += w + " "
		end
		index+=1	
  	  end
  	  puts temp
  	end
  end
end

sw2 = StepwiseWord.new
sw2.stepwise_word 