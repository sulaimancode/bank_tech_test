require 'bank_statement'

describe BankStatment do
  let(:statement) { described_class.new }
  let(:transaction) { double :transaction, amount: 1000 }

  describe '::new' do
    it 'has an empty transaction log' do
      expect(statement.transactions).to be_empty
    end
  end

  describe '#log' do
    it 'logs the transaction' do
      statement.log(transaction)
      expect(statement.transactions).to include transaction
    end
  end


end
