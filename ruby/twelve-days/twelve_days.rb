class TwelveDays
  
  DAY_COUNT = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh",
      "eighth", "ninth", "tenth", "eleventh", "twelfth"]
      
  GIFT_LIST = [
    "and a Partridge in a Pear Tree",
    "two Turtle Doves",
    "three French Hens",
    "four Calling Birds",
    "five Gold Rings",
    "six Geese-a-Laying",
    "seven Swans-a-Swimming",
    "eight Maids-a-Milking",
    "nine Ladies Dancing",
    "ten Lords-a-Leaping",
    "eleven Pipers Piping",
    "twelve Drummers Drumming"
  ]
  
  def self.integer_to_word(integer)
    "On the #{DAY_COUNT[integer - 1]} day of Christmas my true love gave to me: "
  end
  
  def self.reverse_gifts_by_day(count)
    acc = []
    count.times do |n|
      acc.unshift(GIFT_LIST[n])
    end
    acc
  end
  
  def self.song_day(count)
    output = "" 
    output << integer_to_word(count)
    gifts = reverse_gifts_by_day(count)
    output << gifts.join(", ")
    output.gsub!(/me: and a Partridge/, "me: a Partridge")
    output + "."
  end
  
  def self.song(count = 12)
    song = count.times.reduce("") do |res, num|
      new_line = song_day(num + 1)
      if res.length != 0
        res << "\n\n"
        res << new_line
      else
        res << new_line
      end
      res
    end
    song << "\n"
  end
  
  
end