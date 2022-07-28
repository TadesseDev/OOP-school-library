require_relative '../book'

describe Book do
  context 'Book class saves all valid values' do
    before(:each) do
      @book = Book.new('Book Title', 'Book Author')
    end
    it 'saves and return valid title and author' do
      expect(@book.title).to eql 'Book Title'
      expect(@book.author).to eql 'Book Author'
    end

    it 'have valid data type' do
      expect(@book.title).to be_an_instance_of(String)
      expect(@book.author).to be_an_instance_of(String)
    end
  end
end
