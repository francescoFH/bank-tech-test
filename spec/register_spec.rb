require 'register'

describe Register do
  let(:register) { Register.new }
  let(:date) { Time.new.strftime('%d/%m/%Y') }

  it 'stores transactions' do
    register.credit(date, 100, 100)
    register.debit(date, 30, 70)
    expect(register.transactions).to eq([[date, 100, nil, 100], [date, nil, 30, 70]])
  end
end
