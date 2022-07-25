require_relative 'nameable'

# This a Person class
class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  # rubocop:disable Style/OptionalBooleanParameter
  def initialize(age, name = 'Unknown')
    # rubocop:enable Style/OptionalBooleanParameter
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @rentals = []
  end

  def correct_name
    @name
  end



end
