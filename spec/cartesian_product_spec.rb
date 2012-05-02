require File.join(File.dirname(__FILE__), "..", "lib", "cartesianProduct")

describe CartesianProduct do

  it "should return iterate elements" do
    coordinates = CartesianProduct.new([:a,:b,:c], [2,4])
    coordinates.each { |elt| puts elt.inspect }.should == 
      [[:a, 2], [:a, 4], [:b, 2], [:b, 4], [:c, 2], [:c, 4]]
  end

  it "should iterate elements" do
    coordinates = CartesianProduct.new([:a,:b], [4,5])
    coordinates.each { |elt| puts elt.inspect }.should == 
      [[:a, 4], [:a, 5], [:b, 4], [:b, 5]]
  end

  it "should not iterate elements" do
    coordinates = CartesianProduct.new([:a,:b], []).each { |elt| puts elt.inspect }
    coordinates.should == []
  end

  it "should return false" do
    coordinates = CartesianProduct.new([4,5], [:a,:b]).each { |elt| puts elt.inspect }
    coordinates.should_not == 
      CartesianProduct.new([:a,:b], [4,5]).each { |elt| puts elt.inspect }
  end
end
