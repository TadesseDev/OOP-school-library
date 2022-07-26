require_relative 'person'

# This a Student class
class Student < Person
  attr_accessor :classroom

  # rubocop:disable Style/OptionalBooleanParameter
  def initialize(age, classroom, name = 'Unknown', parent_permission = true)
    # rubocop:enable Style/OptionalBooleanParameter
    super(age, name)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def can_use_services?
    if isof_age? || @parent_permission
      true
    else
      false
    end
  end

  private

  def isof_age?
    @age >= 18
  end

  # setter
  def update_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
