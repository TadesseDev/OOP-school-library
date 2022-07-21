class Rental
  attr_accessor :date, :book, :person
  def initialize(date)
    @date = date
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
