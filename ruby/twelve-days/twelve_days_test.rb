require 'minitest/autorun'
require_relative 'twelve_days'

class TwelveDaysTest < Minitest::Test
  
  def test_integer_to_word_returns_spelled_word
    assert_includes Song.integer_to_word(1).split(), "first"
    assert_includes Song.integer_to_word(2).split(), "second"
    assert_includes Song.integer_to_word(3).split(), "third"
  end
  
  def test_build_first_day
    expected = "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree."
    assert_equal expected, Song.song_day(1)
  end
  
  def test_build_second_day
    expected = "On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree."
    assert_equal expected, Song.song_day(2)
  end
  
  def test_reverse_gifts_by_day
    expected = ["two Turtle Doves", "and a Partridge in a Pear Tree"]
    assert_equal expected, Song.reverse_gifts_by_day(2)
  end
  
  def append_lines_adds_lines_together
    expected = "hello\n\ngoodbye"
    assert_equal expected, Song.append_song_lines("hello", "goodbye")
  end
  
  def test_first_two_lines
    starting_line = "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree."
    second_line = "On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree."
    expected = "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.\n\nOn the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree."
    assert_equal expected, Song.append_song_lines(starting_line, second_line)
  end
  
  def test_song_with_first_two_lines_xx
    starting_line = "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree."
    second_line = "On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree."
    expected = "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.\n\nOn the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree."
    assert_equal expected, TwelveDays.song(2)
  end
  # This test is an acceptance test.
  #
  # If you find it difficult to work the problem with so much
  # output, go ahead and add a `skip`, and write whatever
  # unit tests will help you. Then unskip it again
  # to make sure you got it right.
  # There's no need to submit the tests you write, unless you
  # specifically want feedback on them.
  
  def test_the_whole_song
    skip
    song_file = File.expand_path('../song.txt', __FILE__)
    expected = IO.read(song_file)
    assert_equal expected, TwelveDays.song
  end
end
