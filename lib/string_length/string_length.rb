require "stringio"

class StringHelper

  def initialize(input=$stdin,io=$stdout)
    @io = io
    @input = input
  end

  def string_length
    @io.puts "Hi, what's your string?"

    string = @input.gets.chomp

    @io.puts "#{string} has #{string.length} characters."
  end
end