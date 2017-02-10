# Hamming.compute('A', 'A')

module BookKeeping
  VERSION = 3
end



require 'pry'



class Hamming
attr_accessor :differences


  # def initilize
  # end

  def self.compute(x, y)
    differences = 0
    similarities = 0
    array1 = x.split('')
    array2 = y.split('')
    array_index = 0
# use something like index = 0, index +=1 every time through array1.each?ch
    if x.length != y.length
      raise ArgumentError
    else
      array1.each do |i|
        if i == array2[array_index]
          # p "#{array1[array_index]} == #{array2[array_index]}"
          similarities += 1
        else
          differences += 1
          # p "#{array1[array_index]} != #{array2[array_index]}"
        end
        array_index += 1
      end
    end

    # Return Formatting
    # puts x
    # puts y
    #

    return differences


  end




end
