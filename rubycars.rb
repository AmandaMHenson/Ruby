def car_question(description)
    puts "What is #{description}?"
    input = gets.chomp
    input
end

def format_price(asking_price)
   "$#{asking_price}" 
end 

def add_commas(num_string)
    num_string.reverse.scan(/\d{3}|.+/).join(",").reverse
  end
  
make = car_question("make")
model = car_question("model")
year = car_question("year")
color = car_question("color")
mileage = add_commas(car_question("mileage"))
asking_price = car_question("asking_price")

puts ""
puts " #{make.capitalize}\n #{model.capitalize}\n #{year} \n #{color.upcase} \n #{mileage}\n #{format_price(asking_price)}"
