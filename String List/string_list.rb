require 'set'

# def create_strings chars, n
#   return [''] if n == 0

#   strings = []
#   chars.each do |c|
#     strings += create_strings(chars, n - 1).map { |cs| c + cs }
#   end

#   strings
# end

# File.open(ARGV[0]).map{ |line| line.strip.split(',') }.each do |n,s|
#   puts create_strings(s.chars.to_a.uniq.sort, n.to_i).sort.join(',')
# end

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
   @lines.map{ |line| line.strip.split(',') }.each do |n,s|
    puts create_strings(s.chars.to_a.uniq.sort, n.to_i).sort.join(',')
   end 
  end

  def create_strings(chars, n)
    if n > 0
     strings = []
     chars.each do |c|
     strings += create_strings(chars, n - 1).map { |cs| c + cs }
     end
    else
     return ""
    end 
  end
end

sl = StringList.new