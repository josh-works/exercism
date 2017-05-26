class Prime

  def self.nth(num)
    validate(num)
    primes = []
    i = 2
    until primes.count == num
      primes << i if prime?(i)
      i += 1
    end
    primes.last
  end

  def self.prime?(num)
    (2..Math.sqrt(num).floor).each do |n|
      return false if num % n == 0
    end
    true
  end

  def self.validate(num)
    raise ArgumentError if num <= 0
  end
end

class BookKeeping
  VERSION = 1
end
