defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when given a valid file returns the converted list" do
      expected_response = {:ok, [1, 2, :fizz, 4, :buzz]}
      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "when given an invalid file returns an error" do
      expected_response = {:error, "Error reading the file: enoent"}
      assert FizzBuzz.build("invalid.txt") == expected_response
    end
  end
end
