defmodule PhoneNumberTranslatorTest do
  use ExUnit.Case
  doctest PhoneNumberTranslator

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "calculate beer" do
    assert PhoneNumberTranslator.calculate("beer") == ["2", "3", "3", "7", ""]
  end

  test "calculate helloworld" do
    result =["4", "3", "5", "5", "6", "9", "6", "7", "5", "3", ""]
    assert PhoneNumberTranslator.calculate("helloworld") == result
  end
end
