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
        puts "\nWelcome to #{@dealer_name}. How can I help you?"
        puts "\n1. Check inventory. \n2. Add new vehicle. \n3. Delete Vehicle. \n4. Exit"
        
        response = gets.chomp
        direct_response(response)
    end
    
    def direct_response(response)
        puts "\nYou chose #{response}."
        
        if response == "1" 
            puts "\nChecking Inventory"
            inventory_prompt
                    
        elsif response == "2"
            puts "\nAdding New Vehicle"
            vehicle = VehicleForm.new.description
            @inventory.add_vehicle(vehicle)
            puts vehicle
        
        elsif response == "4" 
            puts "\nGoodbye"
            exit
        
        
        #elsif response == "3"
            #puts "Deleting vehicle"
            #vehicle = VehicleForm.new.description
            #@inventory.delete_vehicle(vehicle)

        else 
            puts "\nI don't know what that means. Try again fool!"
        end

    end

    def inventory_prompt
        puts "\na. All inventory \nb.Sort by: vehicle body style \nc.Sort by: price \nd.Back to main menu"

        iresponse= gets.chomp.downcase

        puts "\nYou chose #{iresponse}."
        
        if iresponse == "a" 
            puts "\nDisplaying All Inventory:"
            @inventory.display_vehicles
                    
        elsif iresponse == "b"
            puts "\nDisplaying inventory by body style:"
            @inventory.display_body_style
                   
        elsif iresponse == "c"
            puts "\nDisplaying inventory by price:"
            @inventory.display_price

        elsif iresponse == "d" 
            puts "Returning to Main Menu"
        
        else 
            puts "\nI don't know what that means. Try again fool!"
            inventory_prompt
        end
    end
end

# fix delete vehicle on menu and inventory