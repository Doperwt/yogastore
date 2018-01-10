def initialize_yogastore#starting the store and initializing all the variables
  @shopping_cart = []
  @products = [
    { reference_number: 1231, name: "Super Lite Mat", price: 10 },
    { reference_number: 1232, name: "Power Mat", price: 20 },
    { reference_number: 1233, name: "Block", price: 30 },
    { reference_number: 1234, name: "Meditation cushion", price: 30 },
    { reference_number: 1235, name: "The best T-shirt", price: 200 },
    { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
    { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
    { reference_number: 1238, name: "Light On Yoga", price: 10 }
  ]
  @price = 0
  puts "Hello user, welcome to the Yoga Store"
  list_products
  loop do #keeps looping the store until the customer quits
    print  "choose a product by its reference number or write \'end\' to complete : "
    input = gets.chomp
    case input
    when  'end'
      puts "Thanks for shopping at the Yogastore!!!"
      break
    else
      next if !check_zero(input)
      display_add_cart(input)
    end
  end
end

def check_zero(input)#checking for invalid inputs, so the code doesnt run through the entire inventory
  if input == "0"
    print "0 is not a valid product in the store "
    return false
  elsif input.to_i == 0
    print "either select a product or type \'end\' to exit store "
    return false
  else
    return true
  end
end

def display_add_cart(input)#displaying whats in the cart before the next question is asked
  @products.each do |product|
    if product[:reference_number] == input.to_i
      @shopping_cart.push(product)
      puts "#{input} was added to cart"
      @price = @price + product[:price]
      break
    end
  end
  puts "--------------------\n" #lines for readability
  display_cart
  puts "--------------------\ntotal : #{@price}"
end

def display_cart #displaying the cart for the customer
  @shopping_cart.each do |item|
    puts "#{item[:name]}, price : #{item[:price]}"
  end
end

def list_products # generates a list of products to choose from
  @products.each do |product|
    puts "#{product[:reference_number]}: #{product[:name]} price is #{product[:price]}"
  end
end

initialize_yogastore #starting the program
# p @shopping_cart #debugging
