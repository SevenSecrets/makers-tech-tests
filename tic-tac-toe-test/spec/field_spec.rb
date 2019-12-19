require 'field'

describe Field do

  describe 'initialisation' do
    it 'exists' do
      expect(Field.new).to be_instance_of Field
    end
  end

  describe 'fill_in' do
    before(:each) do
      @field = Field.new
    end

    it 'can be filled' do
      expect(@field.fill_in('x')).to eq 'x'
    end
  end

  describe '#print_field' do
    it 'prints the field contents when empty' do
      field = Field.new
      expect(field.print_field).to eq '[]'
    end

    it 'prints the field contents when filled in' do
      field = Field.new
      field.fill_in('x')
      expect(field.print_field).to eq '[x]'
    end
  end
end
