require "spec_helper"
require "string_length/string_length"
require "stringio"

describe StringHelper do
  it "returns the correct length of a string" do
    input = StringIO.new("horse\n")
    output = StringIO.new()
    described_class.new(input, output).string_length
    expect(output.string).to include("horse has 5 characters")
  end
end