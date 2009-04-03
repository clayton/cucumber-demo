require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Intern do
  before(:each) do
    @attributes = {:number => 1234, :smell => "bad", :indentured_servant => false, :skills => "foo, bar, baz"}
    @intern = Intern.new(@attributes)
  end
  describe "An Intern cannot have a name" do
    it "should not save with a non-numeric number" do
      @intern.number = "Hello"
      @intern.should_not be_valid
      @intern.save.should be_false
    end
  end
  
  describe "#debt_payment_timeframe" do
    describe "When the intern is an indentured servant" do
      before(:each) do
        @servant = Intern.new(@attributes.merge!({:indentured_servant => true}))
      end
      it "should reflect a year of time" do
        @servant.debt_payment_timeframe.should == 365
      end
    end
    describe "When the intern is not an indentured servant" do
      before(:each) do
        @non_servant = Intern.new(@attributes.merge!({:indentured_servant => false}))
      end
      it "should reflect 90 days of time" do
        @non_servant.debt_payment_timeframe.should == 90
      end
    end
  end
end
