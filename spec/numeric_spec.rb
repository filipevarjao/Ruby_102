require File.join(File.dirname(__FILE__), "..", "lib", "numeric")

describe Numeric do

  context "For currencies" do

    it "should return 1 multiply by yen" do
      1.yen.should == 0.013
    end

    it "should return multiply by euros" do
      1.euros.should == 1.292
    end

    it "should return multiply by rupee" do
      1.rupees.should == 0.019
    end

    it "should return multiply by dollar" do
      2.dollar.should == 2
    end
  end

  context "Conversion" do

    it "should return 5 dollars converted by euros" do
      # Se comparado o valor real 384.615384615385 da erro de float-point
      5.dollars.in(:yens).to_i.should == 384
    end

    it "should return 10 euros converted by dollars" do
      10.euros.in(:dollars).should == 12.92
    end

    it "should return 9 rupees converted by dollars" do
      9.rupees.in(:dollars)
    end

    it "should return 6 yens converted by dollars" do
      6.yens.in(:dollars).should == 0.078
    end

    it "should return 4.3 euros converted by rupees" do
      4.3.euros.in(:rupees)
    end
  end
end
