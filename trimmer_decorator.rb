require_relative 'person'

require_relative 'capitalize_decorator'
class TrimmerDecorator
  def initialize(person)
    @person = person
  end
  def correct_name
    @person.name.slice(0, 10)
  end
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(person)
puts capitalized_trimmed_person.correct_name
