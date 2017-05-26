class Squares
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def square_of_sum
    return 0 if num == 0
    (1..num).reduce(:+) ** 2
  end

  def sum_of_squares
    (1..num).reduce(0) { |sum, num| sum + num ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

class BookKeeping
  VERSION = 3
end
