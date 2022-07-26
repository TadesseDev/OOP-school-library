require 'json'
class ProccessJsonFile
  def initialize(file_location)
    @file_location = file_location
  end
  def save_to_json(data,options: {})
    file=File.new(@file_location,'w')
    file.write(JSON.generate(data,options))
    file.close
  end
  def read_from_json(options: {})
    begin
    file=File.new(@file_location,'r')
    return JSON.parse(file.read)
    file.close
    rescue
      puts "no file found to read"
      return nil
    end
  end
end

option=ProccessJsonFile.new('options.rb');
option3=ProccessJsonFile.new('records.rb');
option.save_to_json(["t","b","c"],options: {});
puts option.read_from_json
option.save_to_json(["d","e","f"],options: {});
puts option.read_from_json
puts option3.read_from_json
    # file=File.open('options.txt','r')
    # file.write('this is file content')
    # file_data = file.read
    # puts file_data
