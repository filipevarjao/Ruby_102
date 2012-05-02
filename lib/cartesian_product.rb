class CartesianProduct

  include Enumerable

  def initialize(x, y)
    @result = []
    x.each do |l|
      y.each do |r|
        @result.push([l, r])
      end
    end

  end

  def each
    @result.each { |i| yield i }
  end
end
