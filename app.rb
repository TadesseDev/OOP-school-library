require_relative 'classroom'
require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'

@persons = []
@books = []
@rentals = []

class MakePerson
  @person
@class_room = Classroom.new('microverse_one')
  def initialize(age,name,input)
    @age = age
    @name = name
    @input = input
  end
  def get_person
    create_person
  end
  private
  def create_person
  case @input
    when 1
      print 'Hase parent permission [Y/N]: '
      permission = gets.chomp
      permission = permission.upcase == 'Y'
      @person = Student.new(@age, @class_room, @name, permission)
    when 2
      print 'Specialization: '
      specialization = gets.chomp
      @person = Teacher.new(@age, specialization, @name)
    end
    @person
  end
end
def list_all_books
  @books.each_with_index { |book, index| puts "#{index} Title: \"#{book.title}\", Author: \"#{book.author}\"" }
end

def list_all_people
  @persons.each_with_index do |person, index|
    puts "#{index} [#{person.class}] Name: #{person.name}, Id: #{person.id}, age: #{person.age},"
  end
end

def create_person
  print 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
  input = gets.chop.to_i
  if [1, 2].include?(input)
    print 'age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    persone=MakePerson.new(age,name,input)
    @persons.push(persone.get_person)
    puts 'Person created  successfully!!'
  else
    puts 'Invalid input'
  end
end

def create_book
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  @books.push(Book.new(title, author))
  puts 'Book created successfuly!!'
end

def create_rental
  puts 'Select a book from the following list by number'
  list_all_books
  book_id = gets.chomp
  book = nil
  book = @books[book_id.to_i] if book_id.to_i.to_s == book_id && book_id.to_i < @books.length
  puts 'Select a person from the following list by number (not id)'
  list_all_people
  person = nil
  person_id = gets.chomp
  person = @persons[person_id.to_i] if person_id.to_i.to_s == person_id && person_id.to_i < @persons.length
  if book && person
    print 'Date: '
    date = gets.chomp
    @rentals.push(Rental.new(date, book, person))
    puts 'Rental created successfuly'
  else
    puts 'invalid person or book ID'
  end
end

def list_all_rentals
  print 'ID of person: '
  id = gets.chomp
  person = @persons.filter { |per| per.id == id.to_i }
  if person.length.positive?
    person = person[0]
    @rentals.each do |rent|
      puts "date: #{rent.date}, Book: \"#{rent.book.title}\" by #{rent.book.author}" unless rent.person.id != person.id
    end
  else
    puts 'No person found with that ID'
  end
  ''
end
