class Classroom
  attr_accessor :label
  attr_writer :students[]

  def initialize(label)
    @label = label
  end

  def getlabel
    @label
  end

  def setlabel(label)
    @label = label
  end

  def students(student)
    @students.push(student)
    student.classroom(self)
  end
end
