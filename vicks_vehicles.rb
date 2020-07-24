require_relative 'menu'
require_relative 'inventory'

inventory = Inventory.new
menu1 = Menu.new(inventory)

menu1.prompt_user("Vick's Very Fine Vehicles")
