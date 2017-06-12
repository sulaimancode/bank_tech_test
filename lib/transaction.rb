#
class Transaction
  attr_reader :amount, :made_at
  attr_accessor :account_balance

  def initialize(amount)
    @amount = amount
    @made_at = Time.now.strftime('%d/%m/%Y')
    @account_balance = nil
  end
end
