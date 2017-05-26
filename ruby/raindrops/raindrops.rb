module Conversions
  FACTORS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }
end

class Raindrops
  include Conversions

  def self.convert(number)
    results = FACTORS.keys.reduce('') do |output, key|
      output += FACTORS[key] if number % key == 0
      output
    end
    return number.to_s if results.empty?
    results
  end
end

class BookKeeping
  VERSION = 3
end
