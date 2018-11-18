defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    
    results = []
    cond do 
      code == 1 -> results ++ ["wink"]
      code == 2 -> results ++ ["double blink"]
      code == 3 -> results ++ ["wink", "double blinkJ"]
    end
    # if code == 1 do
    #   results.push "wink"
    # end
    # 
    # res = []
    # if code == 1 res.push "wink" 
    # Enum.any?([code], fn x -> x == "wink" end)
  end
end
