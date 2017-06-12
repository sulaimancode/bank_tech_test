require 'printer'

describe Printer do
  let(:printer) { described_class.new }
  let(:transaction) { double :transaction, amount: 200, made_at: '12/06/2017', account_balance: 200}

  describe '#print' do
    it 'prints account statement to stdout' do
      allow(transaction).to receive(:deposit?) { true }
      statement = [transaction]
      expect { printer.print(statement) }.to output.to_stdout
    end
  end

  describe '#header' do
    it 'prints out header to stdout' do
      header = "\"Date      ||  Transaction     ||   Balance \"\n"
      expect { printer.header }.to output(header).to_stdout
    end
  end
end
