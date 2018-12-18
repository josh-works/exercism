class TwelveDays
  
  DAY_COUNT = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh",
      "eighth", "ninth", "tenth", "eleventh", "twelth"]
      
  GIFT_LIST = [
    "a Partridge in a Pear Tree",
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
  
  def self.add_and(list)
    list[-1].prepend("and ") if list.size > 1
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
    add_and(gifts)
    output << gifts.join(", ")
    output + "."
  end
  
  def self.append_song_lines(total_song, new_line)
    return total_song if total_song.length == 0
    total_song + "\n\n" + new_line
  end
  
  def self.song(count = 12)
    output = ""
    count.times do |num|
      new_line = song_day(num + 1)
      require "pry"; binding.pry
      output = append_song_lines(output, new_line)
    end
    output
  end
  
  
end