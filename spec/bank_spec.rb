require 'bank'

describe Bank do
  let(:account) { Bank.new }

  it 'adds the deposit' do
    account.deposit(100)
    expect(account.balance).to eq 100
  end
end
