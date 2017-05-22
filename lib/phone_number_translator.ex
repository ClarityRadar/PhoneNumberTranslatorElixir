defmodule PhoneNumberTranslator do
  def calculate(word) do
    word
    |> String.split("")
    |> Enum.map(&PhoneNumberTranslator.match/1)
  end

  def match(character) do
    criteria = fn (idx) -> Enum.member?(decipherer(idx), character) end

    (2..9)
    |> Enum.filter(criteria)
    |> Enum.join("")
  end

  def print(word) do
    word
    |> PhoneNumberTranslator.calculate
    |> IO.puts 
  end

  defp decipherer(index) do
    helper = %{
      2 => ["a", "b", "c"],
      3 => ["d", "e", "f"],
      4 => ["g", "h", "i"],
      5 => ["j", "k", "l"],
      6 => ["m", "n", "o"],
      7 => ["p", "q", "r", "s"],
      8 => ["t", "u", "v"],
      9 => ["w", "x", "y", "z"]
    }

    helper[index]
  end
end

PhoneNumberTranslator.print("bear")
