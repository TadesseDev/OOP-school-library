require_relative 'classroom'
require_relative 'student'
require_relative 'teacher'
@class_room_1=Classroom.new('microverse_one')
@persons=[]
def list_all_books
  puts 'listing all books'
end

def list_all_people
  puts 'listing all people'
end

def create_person
  print 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    input=gets.chop.to_i
if(input==1||input==2)
      print "age:"
    age=gets.chomp.to_i
    print "Name:"
    name=gets.chomp
  if input==1
    print "Hase parent permission [Y/N]:"
    permission=gets.chomp
    permission=permission.upcase=='Y'?true:false
    student=Student.new(age, @class_room_1, name, permission)
    @persons.push(student)
    puts "persons #{@persons.length}"
  elsif input==2
    print "specialization:"
    specialization=gets.chomp
    puts "teacher result is #{age} #{name} #{specialization}"
  end
else
    puts "Invalid input"
end
end

def create_book
  puts 'create book'
end

def create_rental
  puts 'create rentals'
end

def list_all_rentals
  puts 'list all rents'
end
