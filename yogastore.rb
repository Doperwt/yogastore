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
def display_add_cart(input)
  @products.each do |product|
    if product[:reference_number] == input.to_i
      @shopping_cart.push(product)
      puts "#{input} was added to cart"
      @price = @price + product[:price]
      break
    end
  end
  display_cart
  puts "--------------------\ntotal : #{@price}"
end
def display_cart
  @shopping_cart.each do |item|
    puts "#{item[:name]}, price : #{item[:price]}"
  end
end
puts "Hello user, welcome to the Yoga Store"

@products.each do |product|
  puts "#{product[:reference_number]}: #{product[:name]} price is #{product[:price]}"
end
loop do
  print  "choose a product by its reference number or write end to complete : "

  input = gets.chomp

  case input
  when  'end'
    puts "you entered nothing"
    break
  else
    display_add_cart(input)
  end
end
p @shopping_cart
