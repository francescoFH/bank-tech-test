require 'bank'

describe Bank do
  let(:account) { Bank.new }

  describe '#deposit' do
    it 'increases the balance' do
      account.deposit(100)
      expect(account.balance).to eq 100
    end
  end

  describe '#withdraw' do
    it 'reduces the balance' do
      account = Bank.new(100)
      account.withdraw(30)
      expect(account.balance).to eq 70
    end

    it 'raise error if overdrawn' do
      expect { account.withdraw(10) }.to raise_error 'Unable to withdraw: insufficient funds.'
    end
  end
end
