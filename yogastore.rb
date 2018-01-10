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
    @products.each do |product|
      if product[:reference_number] == input.to_i
        @shopping_cart.push(product)
        puts "#{input} was added to cart"
        break
      end
    end
  end
end
p @shopping_cart
