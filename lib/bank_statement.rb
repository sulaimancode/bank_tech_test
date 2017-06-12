# understands transaction logs
class BankStatment
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def log(transaction)
    @transactions << transaction
  end
end
