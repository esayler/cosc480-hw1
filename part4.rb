class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    return calories < 200
  end

  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    @name = "JellyBean"
    @calories = 4
    @flavor = flavor
  end

  def delicious?
    if flavor.eql?("black licorice")
      return false
    else
      return true
    end
  end
end

class Car
  @@num_cars = 0
  @@cars = Hash.new #hash of make  to number of cars
  attr_accessor :model, :year
  attr_reader :make

  def initialize(make, *args)
    @@num_cars += 1
    @make = make
    if args.length == 1
      @model = model
    elsif args.length == 2
      @model = args[0]
      @year = args[1]
    end

    if @@cars.has_key?(make)
      @@cars[make] += 1
    else
      @@cars[make] = 1
    end
  end

  def make=(new_make)
    old_make = @make
    @make = new_make
    @@cars[old_make] -= 1
    if @@cars.has_key?(new_make)
      @@cars[new_make] += 1
    else
      @@cars[new_make] = 1
    end
  end

  def self.num_cars_made
    @@num_cars
  end

  def self.most_popular_make
    a = []
    @@cars.each do |model, num|
      if num == @@cars.values.max
        a << model
      end
    end
    return a
  end

  def self.been_made?(make)
    @@cars.has_key?(make)
  end
end
