require 'prime'
require 'pry'

class BookKeeping
  VERSION = 1
end


class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def primes
    primes = []
    Prime.each(number) do |prime|
      primes << prime
    end
    primes
  end

end
