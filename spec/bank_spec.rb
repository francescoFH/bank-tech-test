require 'bank'

describe Bank do
  let(:account) { Bank.new }
  let(:date) { Time.new.strftime('%d/%m/%Y') }

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

  describe '#activity_report' do
    it 'stores money movements' do
      account.deposit(100)
      account.withdraw(30)
      expect(account.activity_report).to eq([[date, 100, nil, 100], [date, nil, 30, 70]])
    end
  end
end
