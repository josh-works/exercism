class Hamming

  def self.compute(string1, string2)
    raise ArgumentError if (string1.length != string2.length)
    counter = 0
    string1.split('').each_with_index do |char, index|
      if char != string2[index]
        counter += 1
      end
    end
    counter
  end

end


class BookKeeping
  VERSION = 3
end
