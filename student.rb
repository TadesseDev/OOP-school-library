require_relative 'person'
# This a Student class
class Student < Person
  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '"¯\(ツ)/¯"'
  end
end

person = Student.new(14, 'persone_one', false)
puts person.can_use_services?
