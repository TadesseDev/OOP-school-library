require_relative 'base_decorator'

require_relative 'person'
class CapitalizeDecorator < BaseDecorator
  def correct_name
    super().capitalize!
  end
end

person = Person.new(22, 'maximilianus')
capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name
