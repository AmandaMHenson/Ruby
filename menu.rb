require_relative 'vehicleform'
require_relative 'vehicle'

class Menu
    # create new menu object
    def initialize(inventory, dealer_name)
        @inventory = inventory 
        @dealer_name = dealer_name
        # Get access to inventory
    end
    
    def prompt_user
        puts "Welcome to #{@dealer_name}. How can I help you?"
        puts "1. Check inventory. \n2. Add new vehicle. \n3. Delete Vehicle. \n4. Exit"
        
        response = gets.chomp
        direct_response(response)
    end
    
    def direct_response(response)
        puts "You chose #{response}."
        if response == "1" 
            puts "Checking Inventory"
            @inventory.display_vehicles
        end

        if response == "2"
            puts "Adding New Vehicle"
            vehicle = VehicleForm.new.description
            @inventory.add_vehicle(vehicle)
            puts vehicle
        end

        #if response == "3"
            #puts "Deleting vehicle"
            #vehicle = VehicleForm.new.description
            #@inventory.delete_vehicle(vehicle)
        #end

        if response == "4" 
            puts "Goodbye"
            exit
        end 

        #else 
            #puts "I don't know what that means. Try again fool!"
        #end
    end
end
# -- Inventory class
# sort by price
# sort by brand/make
# assign inventory number
# fix delete vehicle on menu and inventory