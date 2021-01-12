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
    values.map! { |entry| entry.join(' || ') }
    reversed_entries = values.reverse.join("\n ")
    "#{header}\n #{reversed_entries}"
  end
end
