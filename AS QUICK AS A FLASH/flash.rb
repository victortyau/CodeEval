class Flash
  def initialize
   @lines = ""
   process_file()
  end

  def process_file
   if ARGV.length > 0
    file_name = ARGV[0]
    @lines = IO.readlines(file_name) if File.exist?(file_name)
   end
  end

  def execute
    @lines.each do |line|
      array_numbers = line.delete("\n").split(" ").map {|i| i.to_i}
      puts array_numbers.inspect
    end
  end

  def quicksort(array_numbers)
   return [] if array_numbers.length == 0
   pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))
    return *left.quicksort, pivot, *right.quicksort
  end
end

flash = Flash.new
flash.execute