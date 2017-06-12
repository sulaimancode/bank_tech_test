require 'printer'

describe Printer do
  let(:printer) { described_class.new }
  let(:transaction) { double :transaction, amount: 200, made_at: '12/06/2017', account_balance: 200 }

  describe '#print' do
    it 'prints account statement to stdout' do
      allow(transaction).to receive(:deposit?) { true }
      statement = [transaction]
      expect { printer.print(statement) }.to output.to_stdout
    end
  end

  describe '#print_transaction_with_apporpriate_symbol' do
    context 'when transaction type is deposit' do
      it 'prints transaction amount with a plus sybmol' do
        allow(transaction).to receive(:deposit?) { true }
        statement = [transaction]
        expect { printer.print(statement) }.to output.to_stdout
      end
    end

    context 'when transaction type is withdrawal' do
      it 'prints transaction amount with a minus sybmol' do
        allow(transaction).to receive(:deposit?) { false }
        statement = [transaction]
        expect { printer.print(statement) }.to output.to_stdout
      end
    end
  end

  describe '#header' do
    it 'prints out header to stdout' do
      header = "\"Date      ||  Transaction     ||   Balance \"\n"
      expect { printer.header }.to output(header).to_stdout
    end
  end
end
