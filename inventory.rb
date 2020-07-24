require_relative "format"
require_relative "vehicleform"

class Inventory
  
  def initialize(vehicles=[])
    @vehicles= vehicles
  end
  
  def add_vehicle(new_vehicle)
    @vehicles.push(new_vehicle)
  end
  
  def delete_vehicle(vehicle)
    @vehicles.pop()  
  end

  def display_vehicles
    puts "This is the current inventory:"
    @vehicles.each do |vehicle|
      puts vehicle
    end 
      
  end
end

# inventory = Inventory.new
# vehicle1=VehicleForm.new.description
# inventory.add_vehicle(vehicle1)
# inventory.display_vehicles