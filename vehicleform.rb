require_relative "format"
require_relative "vehicle"

class VehicleForm

    def description
     @make = car_detail("make")
     @model = car_detail("model")
     @year = car_detail("year")
     @body_style = body_style ("body style")
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
    Vehicle.new(@make,@model,@year,@body_style,@color,@mileage,@asking_price)
   end
  end