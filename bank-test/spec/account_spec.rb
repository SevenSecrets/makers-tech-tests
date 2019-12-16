require 'account'

describe Account do

  it 'can take a deposit' do
    account = Account.new
    expect(account.deposit(1)).to eq(1)
  end

  it 'can take a withdrawal' do
    account = Account.new
    expect(account.withdraw(1)).to eq(1)
  end

  it 'can have a statement object' do
    statement = Statement.new
    expect(account = Account.new(statement)).to be_instance_of(Account)
  end
end
