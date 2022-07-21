def main
  options=[
    "Pleas choose an option by entering a bunber",
    "1 - List all books",
    "2 - List all people",
    "3 - create a person",
    "4 - create a book",
    "5 - create a rental",
    "6 - List all rental for a given person id",
    "7 - Exit"
  ]
  puts options
  input=gets.chomp.to_i
  while input != 7
    case input
      when 1
      puts "working on : #{options[1]}"
      when 2
      puts "working on : #{options[2]}"
      when 3
      puts "working on : #{options[3]}"
      when 4
      puts "working on : #{options[4]}"
      when 5
      puts "working on : #{options[5]}"
      when 6
      puts "working on : #{options[6]}"
    end
  puts options
  input=gets.chomp.to_i
  end
end

main
