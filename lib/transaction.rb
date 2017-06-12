class Transaction
  attr_reader :amount, :made_at
  attr_accessor :account_balance
  attr_writer :type

  CURRENT_DATE = Time.now.strftime('%d/%m/%Y')

  def initialize(amount, time = CURRENT_DATE)
    @amount = amount
    @made_at = time
    @type = nil
  end

  def deposit?
    @type == 'deposit'
  end

  def withdrawal?
    @type == 'withdrawal'
  end
end
