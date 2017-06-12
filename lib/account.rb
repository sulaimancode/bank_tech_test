#
require_relative 'bank_statement'
class Account
  attr_reader :balance, :statement

  def initialize(statement: BankStatment.new)
    @balance = 0
    @statement = statement
  end

  def deposit(transaction)
    @balance += transaction.amount
    transaction.account_balance = @balance
    transaction.type = 'deposit'
    statement.log(transaction)
  end

  def withdraw(transaction)
    @balance -= transaction.amount
    transaction.account_balance = @balance
    transaction.type = 'withdrawal'
    statement.log(transaction)
  end

end
