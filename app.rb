require_relative 'classroom'
require_relative 'student'
require_relative 'teacher'
require_relative 'book'
@class_room_1 = Classroom.new('microverse_one')
@persons = []
@books=[]
def list_all_books
  @books.each {|book| puts "Title: \"#{book.title}\", Author: \"#{book.author}\""}
end

def list_all_people
  @persons.each {|person| puts "[#{person.class}] Name: #{person.name}, Id: #{person.id}, age: #{person.age},"}
end

def create_person
  print 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
  input = gets.chop.to_i
  if [1, 2].include?(input)
    print 'age:'
    age = gets.chomp.to_i
    print 'Name:'
    name = gets.chomp
    case input
    when 1
      print 'Hase parent permission [Y/N]:'
      permission = gets.chomp
      permission = permission.upcase == 'Y'
      student = Student.new(age, @class_room_1, name, permission)
      @persons.push(student)
      puts "persons #{@persons.length}"
    when 2
      puts 'Specialization'
      specialization = gets.chomp
      teacher = Teacher.new(age, specialization, name)
      @persons.push(teacher)
      puts 'Person created  successfully'
    end
  else
    puts 'Invalid input'
  end
end

def create_book
    print "Title: "
    title=gets.chomp
    print "Author: "
    author=gets.chomp
    @books.push(Book.new(title,author))
    puts "Book created successfuly"
end

def create_rental
  puts 'create rentals'
end

def list_all_rentals
  puts 'list all rents'
end
