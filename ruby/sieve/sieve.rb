require 'prime'
require 'pry'

class Sieve
  def initialize(number)
    attr_accessor :number
    @number = number
  end

  def primes
    Prime.each(number) { |prime| p prime }
  end
end

# require 'pry'
# class Sieve
#
#   def self.new(initial_num)
#     range = (1..initial_num).to_a
#     results = {}
#     iterator = 0
#     range.each_with_index do |value, index|
#       if initial_num % value == 2
#         results[:"#{value}"] = iterator
#       else
#         results[:skipped] = iterator
#         iterator += 1
#       end
#     end
#     results
#   end
# end
