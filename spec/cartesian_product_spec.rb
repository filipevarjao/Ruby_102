require File.join(File.dirname(__FILE__), "..", "lib", "cartesian_product")

describe CartesianProduct do

  it "should return iterate elements" do
    coordinates = CartesianProduct.new([:a,:b,:c], [2,4])
    coordinates.collect.should == 
      [[:a, 2], [:a, 4], [:b, 2], [:b, 4], [:c, 2], [:c, 4]]
  end

  it "should iterate elements" do
    coordinates = CartesianProduct.new([:a,:b], [4,5])
    coordinates.collect.should == 
      [[:a, 4], [:a, 5], [:b, 4], [:b, 5]]
  end

  it "should not iterate elements" do
    coordinates = CartesianProduct.new([:a,:b], []).collect
    coordinates.should == []
  end

  it "should return false" do
    coordinates = CartesianProduct.new([4,5], [:a,:b]).collect
    coordinates.should_not == 
      CartesianProduct.new([:a,:b], [4,5]).collect
  end
end
