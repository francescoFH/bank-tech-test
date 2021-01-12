require 'statement'

describe Statement do
  let(:statement) { Statement.new }
  let(:account) { Bank.new }
  let(:date) { Time.new.strftime('%d/%m/%Y') }

  it 'displays an empty statement' do
    expect { statement.show }.to output("date || credit || debit || balance\n").to_stdout
  end

  it 'displays activity_report' do
    account.deposit(100)
    account.withdraw(30)
    expect { statement.show(account.transactions) }.to output("date || credit || debit || balance\n #{date} ||  || 30 || 70\n #{date} || 100 ||  || 100\n").to_stdout
  end

  it 'displays an updated statement' do
    account.deposit(200)
    statement.show(account.transactions)
    account.withdraw(100)
    expect { statement.show(account.transactions) }.to output("date || credit || debit || balance\n #{date} ||  || 100 || 100\n #{date} || 200 ||  || 200\n").to_stdout
  end
end
