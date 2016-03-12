require "spec_helper"
require "tip_calculator/tip_calculator"

describe TipCalculator do
  it "returns a $0 tip for a $0 bill" do
    expect(described_class.new("0").tip).to eq(0)
  end
  it "returns a $0 total bill for a $0 bill amount" do
    expect(described_class.new("0").bill).to eq(0)
  end
end