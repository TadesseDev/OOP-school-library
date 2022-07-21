class Classroom
  attr_accessor :label
  attr_writer :students[]

  def initialize(label)
    @label = label
  end
  def get_label
    @label
  end

  def set_label(label)
    @label = label
  end

  def students(student)
    @students.push(student)
    student.classroom(self)
  end
end
