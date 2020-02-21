require 'app'

describe 'feature tests' do
  before(:each) do
    @app = App.new
  end

  it 'returns true for a there-and-back route' do
    expect(@app.tenminuteswalk(['w','w','w','w','w','e','e','e','e','e'])).to eq true
  end

  it 'returns false if it does not return to start' do
    expect(@app.tenminuteswalk(['w','w','w','w','w','w','w','w','w','w'])).to eq false
  end
end
