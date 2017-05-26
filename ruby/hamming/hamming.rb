class Hamming

  def self.compute(str1, str2)
    raise ArgumentError if str1.length != str2.length
    difference = 0
    (str1.length).times do |i|
      if str1[i] != str2[i]
        difference += 1
      end
    end
    difference
  end

end

class BookKeeping
  VERSION = 3
end
