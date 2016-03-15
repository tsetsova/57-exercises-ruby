require "stringio"

class StringHelper

  def initialize(input=$stdin,output=$stdout)
    @output = output
    @input = input
  end

  def string_length
    @output.puts "Hi, what's your string?"

    string = @input.gets.chomp

    @output.puts "#{string} has #{string.length} characters."
  end
end