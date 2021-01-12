class Bank

  attr_reader :balance, :activity_report

  def initialize(balance = 0)
    @balance = balance
    @activity_report = []
  end

  def deposit(amount, date = Time.new.strftime('%d/%m/%Y'))
    @balance += amount
    @activity_report << [date, amount, nil, balance]
  end

  def withdraw(amount, date = Time.new.strftime('%d/%m/%Y'))
    fail 'Unable to withdraw: insufficient funds.' if (@balance - amount).negative?
    @balance -= amount
    @activity_report << [date, nil, amount, balance]
  end

  private
  def negative?(amount)
    amount.negative?
  end
end
