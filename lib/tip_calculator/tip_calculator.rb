class TipCalculator
  def initialize(bill_amount, tip_percent = 15)
    @bill_amount = Float(bill_amount)
    raise ArgumentError.new("Please add a non-negative amount") if @bill_amount < 0
    @tip_percent = Float(tip_percent)/100
  end

  def tip
    format_price(tip_amount)
  end

  def bill
    format_price(@bill_amount + tip_amount)
  end

  private

  def tip_amount
    @bill_amount * @tip_percent
  end

  def format_price(amount)
     sprintf("%.2f",(amount))
  end

end