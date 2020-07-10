def car_question(description)
    puts "What is #{description}?"
    input = gets.chomp
    input
end

def format_price(amount)
   "$#{amount}" 
end 

def add_commas(num_string)
    num_string.reverse.scan(/\d{3}|.+/).join(",").reverse
  end
  
make = car_question("make")
model = car_question("model")
year = car_question("year")
mileage = add_commas(car_question("mileage"))
amount = car_question("amount")

puts ""
puts " #{make.capitalize}\n #{model.capitalize}\n #{year} \n #{mileage}\n #{format_price(amount)}"