defmodule PigLatin do
  @doc """
  Given a `phrase`, translate it a word at a time to Pig Latin.

  Words beginning with consonants should have the consonant moved to the end of
  the word, followed by "ay".

  Words beginning with vowels (aeiou) should have "ay" added to the end of the
  word.

  Some groups of letters are treated like consonants, including "ch", "qu",
  "squ", "th", "thr", and "sch".

  Some groups are treated like vowels, including "yt" and "xr".
  """
  @spec translate(phrase :: String.t()) :: String.t()
  def translate(phrase) do
    phrase
    |> String.split(" ") 
    |> Enum.reduce([], fn x, acc -> acc ++ [translate_single_word(x)] end)
    |> Enum.join(" ")
  end
  
  def translate_single_word(phrase) do
    cond do
      String.match?(phrase, ~r/^qu/) ->
        [first_result, second_result, last_result] = Regex.split(~r{qu}, phrase, include_captures: true, parts: 2)
        "#{last_result}#{second_result}ay"
      Enum.member?(["a", "e", "i", "o", "u"], String.slice(phrase, 0..0)) -> 
        phrase <> "ay"
      Enum.member?(["a", "e", "i", "o", "u"], String.slice(phrase, 1..1)) ->
        String.slice(phrase, 1..-1) <> String.slice(phrase, 0..0) <> "ay"
      String.match?(phrase, ~r/qu/) ->
        [first_result, second_result, last_result] = Regex.split(~r{qu}, phrase, include_captures: true, parts: 2)
        "#{last_result}#{first_result}#{second_result}ay"
      true -> 
        [first_result, second_result, last_result] = Regex.split(~r{[aeiou]|([xy])(?=[^aeiou])}, phrase, include_captures: true, parts: 2)
        "#{second_result}#{last_result}#{first_result}ay"
    end
  end
end
