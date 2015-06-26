class WorkingExperience
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
  def working_experience
   @lines.each do |line|
    array_line = line.delete!("\n").split(";")
    array_line.each do |al|
      puts al
    end  
   end 
  end
end

we = WorkingExperience.new
we.working_experience
