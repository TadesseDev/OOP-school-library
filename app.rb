require_relative 'classroom'
require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'
require_relative 'proccess_file'
require 'json'
require 'pry'
@class_room = Classroom.new('microverse_one')
@persons = []
@books = []
@rentals = []
@person_file = ProccessJsonFile.new('person.json')
@book_file = ProccessJsonFile.new('book.json')
@rentasl_file = ProccessJsonFile.new('rental.json')

def load_files
 @persons=@person_file.read_json ? @person_file.read_json.map do |person|
  person["classroom"] ? Student.new(person["age"],  Classroom.new(person["classroom"]), person["name"], person["permission"]) : Teacher.new(person["age"], person["specialization"], person["name"])
end : []
@books=@book_file.read_json ? @book_file.read_json.map do |book|
  Book.new(book["title"], book["author"])
end : []
@rentals=@rentasl_file.read_json ? @rentasl_file.read_json.map do |rent|
Rental.new(rent["date"], @books[rent["book"]], @persons[rent["person"]])
end : []
end

def save_files
  personArray=@persons.map do |person|
   person.class==Student ? {"name": person.name,"classroom": person.classroom.label,"age": person.age,"permission": person.parent_permission} : {"name": person.name,"specialization": "not set","age": person.age}
end
bookArray=@books.map {|book| {"title": book.title, "author": book.author}}

rentArray=@rentals.map {|rental| {"date": rental.date, "book": @books.index(rental.book), "person": @persons.index(rental.person)}}
@person_file.save_to_json(personArray,options: {})
@book_file.save_to_json(bookArray,options: {})
@rentasl_file.save_to_json(rentArray,options: {})
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
    case input
    when 1
      print 'Hase parent permission [Y/N]: '
      permission = gets.chomp
      permission = permission.upcase == 'Y'
      student = Student.new(age, @class_room, name, permission)
      @persons.push(student)
      puts 'Person created  successfully!!'
    when 2
      print 'Specialization: '
      specialization = gets.chomp
      teacher = Teacher.new(age, specialization, name)
      @persons.push(teacher)
      puts 'Person created  successfully!!'
    end
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
