require 'transaction'

describe Transaction do
  let(:transact) { described_class.new(1000) }

  describe '::new' do
    it 'has an amount to be transacted' do
      expect(transact.amount).to eq 1000
    end

    it 'has a timestamp' do
      expect(transact.made_at).to eq Time.now.strftime('%d/%m/%Y')
    end
  end
end
