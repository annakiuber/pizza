#pizza
def crust
crust= ["pan", "butter crust"]
end
 
def extra
extra= ["xcheese", "expep"]
end

def meats
meats= ["ham", "sausage", "peperoni", "hamburger" , "anchovies"]
end

def veggies
veggies = ["peppers", "onion", "tomatoe"]
end

def sauces
sauces = ["barbeque", "extra marinera"]
end

puts "welcome to Anna's pizza shack"

puts "how many random pizzas would you like?"
	pizzas = gets.chomp.to_i

puts "that will be #{pizzas}"

sizefee = 0
puts "would you like small, medium, or large?"
	sizechoice = gets.chomp
	if sizechoice == "small"
		sizefee += 1.00
	elsif sizechoice == "medium"
		sizefee += 2.00
	else sizechoice == "large"
		sizefee += 3.00
end

crustfee = 0
puts "would you like pan or butter crust?"
	crust_choice = gets.chomp
	if crust_choice == "pan"
		crustfee += 1.00
	else crust_choice == "butter crust"
		crustfee += 0
end

extracheesefee = 0
puts "would you like extre cheese yes/no?"
	extracheesechoice = gets.chomp
	if extracheesechoice == "yes"
		extracheesefee += 1.00
	else
		extracheesefee += 0
	end

extrapepfee = 0
puts "would you like extra pepporoni yes/no?"
	if extrapepchoice = gets.chomp
	if extrapepchoice == "yes"
		extrapepfee += 1.00
	else
		extrapepfee += 1.00
	end


veggiefee = 0
puts "would you like 0, 1 or 2 veggie toppings"
	veggiechoice = gets.chomp
	if veggiechoice == "0"
		veggiefee += 0
	elsif veggiechoice == "1"
		veggiefee += 1.00
	else veggiechoice == "2"
		veggiefee += 2.00
	end



meatfee = 0
puts "would you like 0,1,2,3,or 4 meat toppings?"
	meatchoice = gets.chomp
	if meatchoice == "0"
		meatfee += 0
	elsif meatchoice == "1"
		meatfee += 1.00
	elsif meatchoice == "2"
		meatfee += 2.00
	elsif meatchoice == "3"
		meatfee += 3.00
	else meatchoice == "4"
		meatfee += 4.00
	end
		

pizza = 1
	while pizza <= pizzas do
	meat = meats.sample
	if meat == "anchovies"
	 puts "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeewwwwwwwwwwwwwwwwww  HA HA HA HA you got Anchovied!!!!!"
	end



puts "You ordered #{pizzas} pizza, with #{crust_choice}, with #{extracheesechoice} extra cheese,
and #{meatchoice} topings of meat one being #{meatchoice}, with #{veggiechoice} veggie toppings one being(#{veggies.sample}), and sauced with #{sauces.sample}"


	puts pizza
	pizza += 1
end	

cost = 10.00 * pizza

fee = 0
puts "would you like your pizza delivered to your home yes/no?"
	deliverychoice = gets.chomp
	if deliverychoice == "yes"
		fee = 5.0
	else 
	fee = 0
end


puts "What percentage would you like to tip? (e.g. 15)"
tip_input = gets.chomp.to_i 
tip_percent = tip_input/100
tip = cost * tip_percent

tax = 0.07
before_taxes = cost + fee + crustfee + extracheesefee + veggiefee + meatfee + extrapepfee + sizefee
salestax = tax * before_taxes.to_f


totalcost = before_taxes + tax

puts "your total cost with taxes will be $#{totalcost}."

if pizzas >= 10
	print "put down the pizza dude.....go on a diet or go for a walk!!!!"
end


end
