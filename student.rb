require_relative 'person'

# This a Student class
class Student < Person
  attr_accessor :classroom

  # rubocop:disable Style/OptionalBooleanParameter
  def initialize(age, classroom, name = 'Unknown')
    # rubocop:enable Style/OptionalBooleanParameter
    super(age, name)
    @classroom = classroom
  end

  # setter
  def update_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
