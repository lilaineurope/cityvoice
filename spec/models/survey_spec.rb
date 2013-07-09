require 'spec_helper'

describe Survey do
  before(:each) do
    @s = Survey.new("neighborhood")
  end
  it "makes accessible questions for neighborhood survey" do
    @s.questions[0].should eq("public_safety")
  end
  it "allows editing of instance array of questions" do
    @s.questions[0] = "wat"
    @s.questions[0].should eq("wat")
  end
end
