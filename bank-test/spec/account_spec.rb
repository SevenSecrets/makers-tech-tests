require 'account'

describe Account do

  date_today = Time.new.strftime("%d/%m/%Y")

  it 'can take a deposit' do
    account = Account.new
    expect(account.deposit(1)).to eq(1)
  end

  it 'can take a withdrawal' do
    account = Account.new
    expect(account.withdraw(1)).to eq(-1)
  end

  it 'can have a statement object' do
    statement = Statement.new
    expect(account = Account.new(statement)).to be_instance_of(Account)
  end

  it 'prints a statement correctly' do
    account = Account.new
    account.deposit(1)
    account.deposit(1)
    account.withdraw(1)
    expect(account.print_statement).to eq "date || credit || debit || balance\n#{date_today} ||  || 1 || 1\n#{date_today} || 1 ||  || 2\n#{date_today} || 1 ||  || 1"
  end
end
