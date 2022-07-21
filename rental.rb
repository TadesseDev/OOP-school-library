class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    book.rentals<<self
    @person = person
    person.rentals<<rentals
  end

  def get_date
    @date
  end

  def set_date(date)
    @date = date
  end

  def book(book)
    @book = book
  end

  def person(book)
    @book = book
  end
end
