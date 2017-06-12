#
class Transaction
  attr_reader :amount, :made_at
  attr_accessor :account_balance
  attr_writer :type

  def initialize(amount)
    @amount = amount
    @made_at = Time.now.strftime('%d/%m/%Y')
    @type = nil
  end

  def deposit?
    @type == 'deposit'
  end

  def withdrawal?
    @type == 'withdrawal'
  end
end
