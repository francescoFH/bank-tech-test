require_relative 'register'
require_relative 'statement'

class Bank
  attr_reader :balance, :transactions, :register

  def initialize(balance = 0)
    @balance = balance
    @register = Register.new
    @transactions = register.transactions
    @activity_report = Statement.new
  end

  def deposit(amount, date = Time.new.strftime('%d/%m/%Y'))
    @balance += amount
    register.credit(date, amount, balance)
  end

  def withdraw(amount, date = Time.new.strftime('%d/%m/%Y'))
    raise 'Unable to withdraw: insufficient funds.' if (balance - amount).negative?

    @balance -= amount
    register.debit(date, amount, balance)
  end

  def statement
    @activity_report.show(transactions)
  end
end
