class Statement

  def initialize
    @statement_list = []
  end

  def deposit(credit, balance)
    deposit_date = Time.new.strftime("%d/%m/%Y")
    transaction_data = [deposit_date, "||", credit, "||", "", "||", balance]
    @statement_list << transaction_data
  end

  def withdraw(debit, balance)
    withdrawal_date = Time.new.strftime("%d/%m/%Y")
    transaction_data = [withdrawal_date, "||", "", "||", debit, "||", balance]
    @statement_list << transaction_data
  end

  def return_statement
    @statement_list
  end
end
