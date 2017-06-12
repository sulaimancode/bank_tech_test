require 'account'

describe Account do
  let(:account) { described_class.new }

  describe '::new' do
    it 'has an initial balance of zero' do
      expect(account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'increments balance by amount given' do
      expect { account.deposit(1000) }.to change { account.balance }.by(1000)
    end
  end

  describe '#withdraw' do
    before do
      account.deposit(1000)
    end
    it 'decrements balance by amount given' do
      expect { account.withdraw(500) }.to change { account.balance }.by(-500)
    end
  end
end
