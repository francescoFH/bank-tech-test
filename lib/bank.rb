class Bank

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    fail 'Unable to withdraw: insufficient funds.' if (@balance - amount).negative?
    @balance -= amount
  end

  private
  def negative?(amount)
    amount.negative?
  end
end
