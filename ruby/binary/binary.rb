class Binary

  def self.to_decimal(binary)
    valid?(binary)
    binary.chars.reverse.each_with_index.inject(0) do |total, (value,index) |
      total += value.to_i * 2 ** index
    end
  end

  private

    def self.valid?(input)
      raise ArgumentError, "invalid binary" if (/[^01]/).match(input.to_s)
    end

end

class  BookKeeping
  VERSION = 3
end
