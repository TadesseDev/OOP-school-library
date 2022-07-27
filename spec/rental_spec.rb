require_relative '../rental'
require_relative '../book'
require_relative '../person'
describe Rental do
  context "Rental class saves all valid values" do
    before(:each) do
      book=Book.new('Book Title', "Book Author")
      person=Person.new(28, "person name")
      @rental=Rental.new("10-12-2022", book,person)
    end

    it "have valid data type" do
    expect(@rental.book).to be_an_instance_of(Book)
    expect(@rental.person).to be_an_instance_of(Person)
    end
  end

end
