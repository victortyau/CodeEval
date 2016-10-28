require 'set'

def generate_strings chars, n
  return [''] if n == 0

  strings = []
  chars.each do |c|
    strings += generate_strings(chars, n - 1).map { |cs| c + cs }
  end
  strings
end

File.open(ARGV[0]).map{ |line| line.delete("\n").split(',') }.each do |number,strings|
  puts create_strings(strings.chars.to_a.uniq.sort, number.to_i).sort.join(',')
end
