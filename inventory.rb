require_relative "format"
require_relative "vehicleform"
require_relative 'vehicle'

class Inventory
  
  def initialize(vehicles=[])
    @vehicles= vehicles
  end
  
  def add_vehicle(new_vehicle)
    @vehicles.push(new_vehicle)
  end
  
  def display_vehicles
    puts "\nThis is the current inventory:"

    if @vehicles.size == 0
      puts "no inventory"
    else
      @vehicles.sort.each do |vehicle|
        puts vehicle
      end   
    end
  end

  def display_body_style
    puts "\nThis is inventory sorted by vehicle's body style:"
    
    if @vehicles.size == 0
      puts "no inventory"
    else
      vehicles = @vehicles.sort_by {|a| [a.body_style]}
      puts vehicles
    end

  end

  def display_price
    puts "\nThis is inventory sorted by vehicle's price:"

    if @vehicles.size == 0
      puts "no inventory"
    else
      vehicles = @vehicles.sort_by {|a| a.asking_price}
      puts vehicles
    end

  end

end

# -- Inventory class

# assign inventory number

# inventory = Inventory.new
# vehicle1=VehicleForm.new.description
# inventory.add_vehicle(vehicle1)
# inventory.display_vehicles