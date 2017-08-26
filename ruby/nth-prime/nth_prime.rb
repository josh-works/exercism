require 'pry'

class Prime

  def self.nth(number)
    raise ArgumentError if number == 0
    counter = 2
    current_number = 2
    while (counter <= number) do
      current_number += 1
      counter += 1 if is_prime?(current_number)
    end
    current_number
  end

  private

    def self.is_prime?(number)
      (2..(Math.sqrt(number).floor)).each do |n|
        return false if number % n == 0
      end
      true
    end

end


class BookKeeping

  VERSION = 1

end
