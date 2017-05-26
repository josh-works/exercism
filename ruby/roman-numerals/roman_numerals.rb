module Conversions
  ROMAN_NUMERALS = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }
end

class Integer
  include Conversions

  def to_roman
    number = self
    results = ROMAN_NUMERALS.reduce('') do |output, (key, value)|
      quotient, modulus = number.divmod(key.to_i)
      output << value * quotient
      number -= (key * quotient)

      output
    end
    return results
  end
end

class BookKeeping
  VERSION = 2
end
