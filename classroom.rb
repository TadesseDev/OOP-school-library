class Classroom
  attr_accessor :label, :students

  def initialize(label)
    @label = label
    @students=[]
  end

  def label
    @label
  end

  def label=(label)
    @label = label
  end

  def students(student)
    @students.push(student)
    student.classroom(self)
  end
end
