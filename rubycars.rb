class Vehicle 
 
  attr_reader :make, :model, :year, :color
  attr_writer :mileage, :asking_price

  def initialize (make, model, year, color, mileage, asking_price)
    @make = make.capitalize
    @model = model.capitalize
    @year = year
    @color = color
    @mileage = mileage
    @asking_price = asking_price
  end

  def to_s
    "Vehicle is a #{@year} #{@make} #{@model} (#{@color}) with #{@mileage} miles valued at $#{@asking_price}."
  end
end

class Vehicle_form

  def description
   @make = car_detail("make")
   @model = car_detail("model")
   @year = car_detail("year")
   @color = car_detail("color")
   @mileage = car_detail("mileage")
   @asking_price = car_detail("asking_price")
  create_vehicle
  end

  def car_detail(description)
    puts "What is #{description}?"
    input = gets.chomp
    input
  end

 def create_vehicle
  Vehicle.new(@make,@model,@year,@color,@mileage,@asking_price)
 end
end

vehicle1=Vehicle_form.new.description
puts vehicle1