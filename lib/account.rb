#
class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(transaction)
    @balance += transaction.amount
    transaction.account_balance = @balance
  end

  def withdraw(transaction)
    @balance -= transaction.amount
    transaction.account_balance = @balance
  end

end
