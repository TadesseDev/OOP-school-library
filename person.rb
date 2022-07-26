# This a Person class
class Person
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown')
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @rentals = []
  end
end
