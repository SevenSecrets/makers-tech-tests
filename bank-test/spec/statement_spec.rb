require 'statement'

describe Statement do

  date_today = Time.new.strftime("%d/%m/%Y")

  it 'stores deposit data' do
    statement = Statement.new
    expect(statement.deposit(1, 1)).to include([date_today, "||",  1, "||", "", "||", 1])
  end

  it 'stores withdrawal data' do
    statement = Statement.new
    expect(statement.withdraw(1, 0)).to include([date_today, "||",  "", "||", 1, "||", 0])
  end

  it 'prints statments' do
    statement = Statement.new
    statement.deposit(1, 1)
    statement.withdraw(1, 0)
    expect(statement.print_statement).to eq([[date_today, "||", 1, "||", "", "||", 1], [date_today, "||", "", "||", 1, "||", 0]])
  end
end
