require 'statement'

describe Statement do
  let(:statement) { Statement.new }
  let(:account) { Bank.new }
  let(:date) { Time.new.strftime('%d/%m/%Y') }

  it 'displays an empty statement' do
    expect(statement.show).to eq 'date || credit || debit || balance'
  end

  it 'displays activity_report' do
    account.deposit(100)
    account.withdraw(30)
    expect(statement.show(account.activity_report)).to eq "date || credit || debit || balance\n #{date} ||  || 30 || 70\n #{date} || 100 ||  || 100"
  end
end
