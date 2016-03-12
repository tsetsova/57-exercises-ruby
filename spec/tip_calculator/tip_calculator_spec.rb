require "spec_helper"
require "tip_calculator/tip_calculator"

describe TipCalculator do
  it "returns a correct tip for $100 bill" do
    expect(described_class.new("100").tip).to eql("15.00")
  end

  it "returns a correct total bill for $100 bill" do
    expect(described_class.new("100").bill).to eql("115.00")
  end

  it "returns a correct tip for $10 bill" do
    expect(described_class.new("10").tip).to eql("1.50")
  end

  it "returns a correct bill for $10 bill" do
    expect(described_class.new("10").bill).to eql("11.50")
  end

  it "returns a correct bill for $100 bill with 20% tip" do
    expect(described_class.new("100", "20").tip).to eql("20.00")
  end

  it "returns a correct bill for $100 bill with 20% tip" do
    expect(described_class.new("100", "20").bill).to eql("120.00")
  end

  it "round up the tip amount for fractions" do
    expect(described_class.new("11.25").tip).to eql("1.69")
  end
end