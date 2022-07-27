require_relative '../classroom'

describe Classroom do
  context "class saves all valid values" do
    before(:each) do
    @class=Classroom.new('Microverse class')
    end
    it "saves and return valid name and age" do
    expect(@class.label).to eql "Microverse class"
    end

    it "have valid data type" do
    expect(@class.students).to be_an_instance_of(Array)
    end
  end

end
