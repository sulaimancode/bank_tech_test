class Printer
  def print(statement)
    header
    print_transaction_with_apporpriate_symbol(statement)
    nil
  end

  def print_transaction_with_apporpriate_symbol(statement)
    statement.reverse.each do |e|
      if e.deposit?
        p "#{e.made_at} ||      +£#{e.amount}        || £#{e.account_balance}"
      else
        p "#{e.made_at} ||      -£#{e.amount}        || £#{e.account_balance}"
      end
    end
  end

  def header
    p 'Date      ||  Transaction     ||   Balance '
  end
end
