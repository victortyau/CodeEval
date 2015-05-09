require 'prime'
class PrimeNumbers
  def initialize
    @lines = ""
    arquivio()
  end

  def arquivio
    file_name = ARGV[0]
     if File.exist?(file_name)
       @lines = IO.readlines(file_name)
     end  
  end

  def primes_numbers
    @lines.each do |line|
       n = line.delete!("\n").to_i
       array_prime =Prime.take_while {|p| p < n  }
       puts array_prime.join(",")
    end
  end
end

pn = PrimeNumbers.new
pn.primes_numbers
