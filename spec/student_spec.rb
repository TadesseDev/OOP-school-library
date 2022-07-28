require_relative '../student'
require_relative '../classroom'
describe Student do
  context 'student class saves all valid values' do
    before(:each) do
      @student = Student.new(28, Classroom.new('Microverse'), 'student name', false)
    end
    it 'saves and return valid name and age' do
      expect(@student.name).to eql 'student name'
      expect(@student.age).to be 28
      expect(@student.parent_permission).to be false
    end

    it 'have valid data type' do
      expect(@student.classroom).to be_an_instance_of(Classroom)
    end
  end
end
