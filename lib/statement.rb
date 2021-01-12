require_relative 'bank'

class Statement
  def show(values = false)
    if values
      statement(values)
    else header
    end
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
