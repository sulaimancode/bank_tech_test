require 'account'

describe Account do

  let(:account) { described_class.new }

  describe '::new' do
    it 'has an initial balance of zero' do
      expect(account.balance).to eq 0
    end
  end

end
