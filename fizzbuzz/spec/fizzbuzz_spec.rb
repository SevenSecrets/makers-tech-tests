require 'fizzbuzz'

describe 'fizzbuzz tests - specific numbers' do
  before(:each) do
    @fizzbuzz = FizzBuzz.new
  end

  it 'prints fizz on 3' do
    expect(@fizzbuzz.play(3)).to eq 'fizz'
  end

  it 'prints buzz on 5' do
    expect(@fizzbuzz.play(5)).to eq 'buzz'
  end

  it 'prints fizzbuzz on 15' do
    expect(@fizzbuzz.play(15)).to eq 'fizzbuzz'
  end

  it 'prints number on non-divisible' do
    expect(@fizzbuzz.play(2)).to eq 2
  end

  it 'prints fizz on 6' do
    expect(@fizzbuzz.play(6)).to eq 'fizz'
  end
end
