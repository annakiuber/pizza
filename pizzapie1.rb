#pizza
crust= ["pan", "butter crust"]
extra= ["xcheese", "expep"]
meats= ["ham", "sausage", "peperoni", "hamburger"]
veggies = ["peppers", "onion", "tomatoe", "anchovies"]
sauces = ["sauceb", "sauceb"]

puts "how many pizzas do you want?"
	pizzas = gets.chomp.to_i

puts "I will make you #{pizzas}"

pizza = 1
while pizza <= pizzas do
	veggie = veggies.sample
	if veggie == "anchovies"
		veggie = "eeeeeeeeewwwwwww"
	end

puts "your crust will #{crust.sample}, your extra will be #{extra.sample},
your meats will be #{meats.sample}, your veggies will be #{veggie}, and your 
sauces will be #{sauces.sample}"


	puts pizza
	pizza += 1
end	

cost= 10.00 * pizza
	puts "total cost will be $#{cost}"
