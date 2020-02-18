require 'fizzbuzz'

describe 'fizzbuzz tests' do
  before(:each) do
    fizzbuzz = FizzBuzz.new
  end

  it 'prints fizz on 3' do
    expect(fizzbuzz.play(3)).to equal 'fizz'
  end
end
