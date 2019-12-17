require_relative 'statement.rb'

class Account
  def initialize(statement = Statement.new)
    @credit = 0
    @debit = 0
    @balance = 0
    @statement = statement
  end

  def deposit(num)
    @balance += num
    @debit = 0
    @credit = num
    @statement.deposit(@credit, @balance)
    @balance
  end

  def withdraw(num)
    @balance -= num
    @credit = 0
    @debit = num
    @statement.withdraw(@debit, @balance)
    @balance
  end

  def print_statement
    @statement.print_statement
  end
end
