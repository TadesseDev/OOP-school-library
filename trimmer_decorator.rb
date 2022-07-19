require_relative 'person'
require_relative 'base_decorator'
require_relative 'capitalize_decorator'
class TrimmerDecorator < BaseDecorator
  def correct_name
    super().
  end
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(person)
puts capitalizedTrimmedPerson.correct_name
