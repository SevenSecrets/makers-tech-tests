class Statement
  def initialize
    @transaction_list = []
  end

  def deposit(credit, balance)
    deposit_date = Time.new.strftime("%d/%m/%Y")
    transaction_data = [deposit_date, "||", credit, "||", "", "||", balance]
    @transaction_list << transaction_data
  end

  def withdraw(debit, balance)
    withdrawal_date = Time.new.strftime("%d/%m/%Y")
    transaction_data = [withdrawal_date, "||", "", "||", debit, "||", balance]
    @transaction_list << transaction_data
  end

  def print_statement
    statement_to_return = @transaction_list.map { |arr|
      arr.join(" ")
    }
    statement_to_return << "date || credit || debit || balance"
    statement_to_return.reverse!
    return statement_to_return.join("\n")
  end
end
