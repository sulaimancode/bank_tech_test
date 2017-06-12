#
require_relative 'bank_statement'
require_relative 'printer'
class Account
  attr_reader :balance, :statement, :printer

  def initialize(statement: BankStatment.new, printer: Printer.new)
    @balance = 0
    @statement = statement
    @printer = printer
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

  def print_statement
    printer.print(statement.transactions)
  end

end
