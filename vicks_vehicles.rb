require_relative 'menu'
require_relative 'inventory'

inventory = Inventory.new
menu1 = Menu.new(inventory,"Vick's Very Fine Vehicles")

loop do
    menu1.prompt_user
end
