require 'transaction'

describe Transaction do
  let(:transaction) { described_class.new(1000) }

  describe '::new' do
    it 'has an amount to be transacted' do
      expect(transaction.amount).to eq 1000
    end

    it 'has a timestamp' do
      expect(transaction.made_at).to eq Time.now.strftime('%d/%m/%Y')
    end

    it 'has an account balance of nil' do
      expect(transaction.account_balance).to eq nil
    end
  end

  describe '#deposit?' do
    context 'when transaction type is deposit' do
      it 'returns true' do
        transaction.type = 'deposit'
        expect(transaction).to be_deposit
      end
    end

    context 'when transaction type is not deposit' do
      it 'returns false' do
        expect(transaction).to_not be_deposit
      end
    end
  end

  describe '#withdrawal?' do
    context 'when transaction type is withdrawal' do
      it 'returns true' do
        transaction.type = 'withdrawal'
        expect(transaction).to be_withdrawal
      end
    end

    context 'when transaction type is not withdrawal' do
      it 'returns false' do
        expect(transaction).to_not be_withdrawal
      end
    end
  end
end
