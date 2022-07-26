require_relative 'person'

# This a Teacher class
class Teacher < Person
  def initialize(age, specialization, name = 'Unknown')
    super(age, name)
    @specialization = specialization
  end
end
