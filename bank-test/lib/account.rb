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
  end

  def withdraw(num)
    @balance -= num
    @credit = 0
    @debit = num
  end
end
