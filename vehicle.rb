require_relative "format"
class Vehicle 
 
    attr_accessor :make, :model, :year, :color, :body_style, :mileage, :asking_price
  
    def initialize (make, model, year, color, body_style, mileage, asking_price)
      @make = make.capitalize
      @model = model.capitalize
      @year = year
      @color = color
      @body_style = body_style
      @mileage = mileage
      @asking_price = asking_price
      end

    def to_s
      "\nVehicle is a #{@year} #{@make} #{@model} #{@body_style} (#{@color}) with #{Format.add_commas(@mileage)} miles valued at #{Format.num_to_currency(@asking_price)}."
    end

    def <=>(other_vehicle)
      @make<=>other_vehicle.make
      @asking_price <=> other_vehicle.asking_price
      @body_style <=> other_vehicle.body_style
    end
  end