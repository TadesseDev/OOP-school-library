require_relative '../book'

describe Book do
  context "Book class saves all valid values" do
    before(:each) do
    @Book=Book.new('Book Title', "Book Author")
    end
    it "saves and return valid title and author" do
    expect(@Book.title).to eql 'Book Title'
    expect(@Book.author).to eql "Book Author"
    end

    it "have valid data type" do
    expect(@Book.title).to be_an_instance_of(String)
    expect(@Book.author).to be_an_instance_of(String)
    end
  end

end
