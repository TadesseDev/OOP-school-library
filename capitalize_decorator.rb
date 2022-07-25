class CapitalizeDecorator
  def initialize(person)
    @person = person
  end
  def correct_name
    @person.name.capitalize!
  end
end
