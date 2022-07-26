require 'json'
require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'
class ProccessJsonFile
  def initialize(file_location)
    @file_location = file_location
  end

  def save_to_json(data, options: {})
    file = File.new(@file_location, 'w')
    file.write(JSON.generate(data, options))
    file.close
  end

  def read_json(options: {})
    file = File.new(@file_location, 'r')
    file_data = JSON.parse(file.read, options)
    file.close
    file_data
  rescue StandardError
    puts "no file found to read on #{@file_location}"
    nil
  end
end

# class testing contents
# option = ProccessJsonFile.new('options.rb')
# option3 = ProccessJsonFile.new('records.rb')
# option.save_to_json(%w[t b c], options: {})
# puts option.read_json
# option.save_to_json(%w[d e f], options: {})
# puts option.read_json
# puts option3.read_json

# manual testing contents
# file=File.open('options.txt','r')
# file.write('this is file content')
# file_data = file.read
# puts file_data
