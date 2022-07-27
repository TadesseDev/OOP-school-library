require_relative '../person'

describe Person do
  context 'person class saves all valid values' do
    before(:each) do
      @person = Person.new(28, 'person name')
    end
    it 'saves and return valid name and age' do
      expect(@person.name).to eql 'person name'
      expect(@person.age).to be 28
    end

    it 'have valid data type' do
      expect(@person.rentals).to be_an_instance_of(Array)
    end
  end
end
