#
class Transaction
  attr_reader :amount, :made_at

  def initialize(amount)
    @amount = amount
    @made_at = Time.now.strftime('%d/%m/%Y')
  end
end
