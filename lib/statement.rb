require_relative 'bank'

class Statement
  def show(transactions = false)
    puts transactions ? statement(transactions) : header
  end

  private

  def header
    'date || credit || debit || balance'
  end

  def statement(values)
    transactions = values.map { |entry| entry.join(' || ') }
    reversed_transactions = transactions.reverse.join("\n ")
    "#{header}\n #{reversed_transactions}"
  end
end
