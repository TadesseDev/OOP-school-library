require_relative '../proccess_file'

describe ProccessJsonFile do
  context 'generate .json file and return an objec on json parse' do
    before :each do
      @file = ProccessJsonFile.new('spec/test_file.json')
    end

    it 'saves a json data' do
      expect(@file.save_to_json([1, 2, 3])).to eql 'success'
    end
    it 'get a object data back' do
      expect(@file.read_json).to eql [1, 2, 3]
    end
  end
end
