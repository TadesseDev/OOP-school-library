require_relative 'app'

OPTIONS = [
  "\n\nPlease choose an option by entering a bunber",
  '1 - List all books',
  '2 - List all people',
  '3 - create a person',
  '4 - create a book',
  '5 - create a rental',
  '6 - List all rental for a given person id',
  "7 - Exit \n\n"
].freeze

def main
  load_files
  puts OPTIONS
  input = gets.chomp.to_i
  while input != 7
    process_input(input)
    puts OPTIONS
    input = gets.chomp.to_i
  end
  save_files
end

main
