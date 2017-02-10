# bah. Can't figure it out. submitting incomplete to see other's work.
# built this answer after looking at http://exercism.io/submissions/ee99a9158cd04fbb8981fab70370c223
# but used that answer as insipration. Just looked at it, then closed the tab and recreated on my own.

class BookKeeping
  VERSION = 3
end

class Raindrops

  FACTORS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    sound = FACTORS.select { |factor| number % factor == 0 }
    sound.values.join.empty? ? number.to_s : sound.values.join
  end
end
