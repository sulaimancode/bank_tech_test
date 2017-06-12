#
class Printer
  def print(statement)
    header
    statement.reverse.each do |e|
      if e.deposit?
        p "#{e.made_at} ||      +£#{e.amount}        || £#{e.account_balance}"
      else
        p "#{e.made_at} ||      -£#{e.amount}        || £#{e.account_balance}"
      end
    end
    nil
  end

  def header
    p "Date      ||  Transaction     ||   Balance "
  end
end
