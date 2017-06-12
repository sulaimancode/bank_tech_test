require 'account'

describe Account do
  TRANSACTION_AMOUNT = 1000
  let(:account) { described_class.new }
  let(:transaction) { double :transaction, amount: TRANSACTION_AMOUNT }
  before do
    allow(transaction).to receive(:account_balance=)
  end

  describe '::new' do
    it 'has an initial balance of £0' do
      expect(account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'increments balance by amount given' do
      expect { account.deposit(transaction) }.to change { account.balance }.by(TRANSACTION_AMOUNT)
    end
  end

  describe '#withdraw' do
    it 'decrements balance by amount given' do
      expect { account.withdraw(transaction) }.to change { account.balance }.by(-TRANSACTION_AMOUNT)
    end
  end
end
