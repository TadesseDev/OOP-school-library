require_relative '../teacher'

describe Teacher do
  context 'teacher class saves all valid values' do
    before(:each) do
      @teacher = Teacher.new(28, 'software development', 'teacher name')
    end
    it 'saves and return valid name and age' do
      expect(@teacher.name).to eql 'teacher name'
      expect(@teacher.specialization).to eql 'software development'
      expect(@teacher.age).to be 28
    end
  end
end
