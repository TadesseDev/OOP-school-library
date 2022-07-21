class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def author
    @author
  end

  def author=(author)
    @author = author
  end
end
