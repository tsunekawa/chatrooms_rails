require 'spec_helper'

describe Room do
  before do
    @room = Room.new(:name=>"test")
  end
  subject { @room }

  it "save successfully" do
    subject.save.should be_true
  end
end
