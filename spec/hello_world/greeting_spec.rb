require "spec_helper"
require "hello_world/greeting"

describe Greeting do
  it "returns a personalised greeting" do
    expect(subject.message("Brian")).to eq "Hello, Brian, nice to meet you!"
  end

  it "returns a different greeting if you're familiar" do
    subject.message("Brian")
    expect(subject.message("Brian")).to eq "Hello, Brian, nice to see you again!"
  end

  it "returns a special greeting to special people" do
    expect(subject.message("Ina")).to eq "Hi, lovely, how are you today?"
  end
end