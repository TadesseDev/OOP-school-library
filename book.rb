class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def gettitle
    @title
  end

  def settitle(title)
    @title = title
  end

  def getauthor
    @author
  end

  def setauthor(author)
    @author = author
  end
end
