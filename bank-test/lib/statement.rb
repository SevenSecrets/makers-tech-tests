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

  def return_statement
    @transaction_list
  end
end
