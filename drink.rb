class Drink
  attr_accessor :soda, :beer

  def initialize(soda, beer)
    @soda = soda
    @beer = beer
  end

  def output_drink
    puts "#{@soda} or #{@beer}?"
  end

end


drink = Drink.new(:coke, :yuengling)
drink.output_drink
