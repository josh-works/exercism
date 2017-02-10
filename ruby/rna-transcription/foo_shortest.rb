require 'pry'

class Test
  def self.find_short(list)
      binding.pry
      list.split.map(&:size).min
    end
end
