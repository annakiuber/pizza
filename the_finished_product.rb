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
veggies = ["peppers", "onion", "tomatoe", "mushrooms"]
end

def sauces
sauces = ["barbeque", "extra marinera", "alfredo", "cheeseburger pizzasauce"]
end

def pizzaorder
	puts "welcome to Anna's random pizza shack"



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
	puts "would you like extra pepperoni yes/no?"
	if extrapepchoice = gets.chomp
	elsif extrapepchoice == "yes"
		extrapepfee += 1.00
	else
		extrapepfee += 1.00
	end

	veggiefee = 0
	puts "Would you like 0,1,2,3 or 4 random veggie toppings? All are one dollar for each topping."
	veggiechoice = gets.chomp
	if veggiechoice == 0
		veggiefee += 0
	elsif veggiechoice == 1
		veggiefee += 1.00
	elsif veggiechoice == 2
		veggiefee += 2.00
	elsif veggiechoice == 3
		veggiefee += 3.00
	else veggiechoice == 4
		veggiefee += 4.00
	end

	meatfee = 0
puts "would you like 0,1,2,3,or 4 meat toppings?"
	meatchoice = gets.chomp
	if meatchoice == 0
		meatfee += 0
	elsif meatchoice == 1
		meatfee += 1.00
	elsif meatchoice == 2
		meatfee += 2.00
	elsif meatchoice == 3
		meatfee += 3.00
	else meatchoice == 4
		meatfee += 4.00
	end

pizza = 0
	until pizza == pizzas do
	meat = meats.sample
	if meat == "anchovies"
	 puts "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeewwwwwwwwwwwwwwwwww  HA HA HA HA you got Anchovied!!!!!"
	end



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


puts 'What percentage would you like to tip? and remember.... tipping is not a place in chine and stands for " To insure propper service" (e.g. 15)'
tip_input = gets.chomp.to_i 
tip_percent = tip_input/100
tip = cost * tip_percent

tax = 0.07
before_taxes = cost + fee + crustfee + extracheesefee + veggiefee + meatfee + extrapepfee + sizefee
salestax = tax * before_taxes.to_f


totalcost = before_taxes + tax
#pizzamachine
pizzamaker = 1
while pizzamaker < pizzas
	if pizzas == 0
		puts  "NO PIZZA FOR YOU!!!!!!"
	elsif pizzas == 1 && extracheesechoice  == "no" && extrapepchoice == "no" && veggiechoice == 0 && meatchoice == 0  
		puts "Your #{pizzamaker} #{sizechoice} pizza, with #{crust_choice},and might i add, a very bland pizza with #{sauces.sample} sauce "
	elsif pizzas == 1  && extracheesechoice == "yes" && extrapepchoice == "no" && veggiechoice == 0 && meatchoice == 0
		puts  "Your #{pizzamaker} #{sizechoice} pizza, with #{crust_choice}, with extra cheese, and sauced with #{sauces.sample} "
	elsif pizzas > 1 && extrapepchoice == "yes" && extrapepchoice == "yes" && veggiechoice == 0 && meatchoice == 0
		puts "your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with extra cheese, and extra pepperoni and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "yes" && veggiechoice == 0 && meatchoice == 0
		puts "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with extra peperoni, and sauced with #{sauces.sample} "
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 1 && meatchoice == 0
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} random veggie toppings: #{veggies.sample}, and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 2 && meatchoice == 0
	  	puts  "Your #{pizzamaker} #{sizechoice} pizzas , with #{crust_choice} crust, and #{veggiechoice} #{veggies.sample(2).join(", ")} , and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 3 && meatchoice == 0
	  	puts  "Your #{pizzamaker} #{sizechoice} pizzas , with #{crust_choice} crust, and #{veggiechoice} #{veggies.sample(3).join(", ")} , and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 4 && meatchoice == 0
		puts "Your #{pizzamaker} #{sizechoice} pizzas , with #{crust_choice} crust, and #{veggiechoice} #{veggies.sample(4).join(", ")} , and sauced with #{sauces.sample}"
	#ZERO BRAKE

	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 0 && meatchoice == 1
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with no veggie topping, #{meatchoice} #{meats.sample} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 0 && meatchoice == 2
	  	puts  "Your #{pizzas} #{sizechoice} pizzas , with #{crust_choice} crust, and #{veggiechoice} #{veggies.sample(2).join(", ")} , and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 0 && meatchoice == 3
	  	puts  "Your #{pizzas} #{sizechoice} pizzas , with #{crust_choice} crust, and #{veggiechoice} #{veggies.sample(3).join(", ")} , and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 0 && meatchoice == 4
		puts "Your #{pizzas} #{sizechoice} pizzas , with #{crust_choice} crust, and #{veggiechoice} #{veggies.sample(4).join(", ")} , and sauced with #{sauces.sample}"



	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 1 && meatchoice == 1
		puts  "your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} random veggie topping: #{veggies.sample}, #{meats.sample} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 2 && meatchoice == 1
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(2).join(", ")} , #{meats.sample} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 3 && meatchoice == 1
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(3).join(", ")} , #{meats.sample} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 4 && meatchoice == 1
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(4).join(", ")} , #{meats.sample} and sauced with #{sauces.sample}"


	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 1 && meatchoice == 2
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} random veggie topping: #{veggies.sample}, #{meatchoice} #{meats.sample(2).join(", ")} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 2 && meatchoice == 2
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(2).join(", ")} , #{meatchoice} #{meats.sample(2).join(", ")} and sauced with #{sauces.sample}"
	 elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 3 && meatchoice == 2
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(3).join(", ")} , #{meatchoice} #{meats.sample(2).join(", ")} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 4 && meatchoice == 2
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(4).join(", ")} , #{meatchoice} #{meats.sample(2).join(", ")} and sauced with #{sauces.sample}"
	 


	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 1 && meatchoice == 3
		puts  "your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice}random veggie topping: #{veggies.sample}, #{meats.sample} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 2 && meatchoice == 3
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(2).join(", ")} , #{meatchoice} #{meats.sample(3)}.join and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 3 && meatchoice == 3
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(3).join(", ")} , #{meatchoice} #{meats.sample(3)}.join and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 4 && meatchoice == 3
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(4).join(", ")} , #{meatchoice} #{meats.sample(3).join} and sauced with #{sauces.sample}"

	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 1 && meatchoice == 4
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} random veggie topping: #{veggies.sample}, #{meatchoice} #{meats.sample(4).join(", ")} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 2 && meatchoice == 4
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(2).join(", ")} , #{meatchoice} #{meats.sample(4).join(", ")} and sauced with #{sauces.sample}"
	 elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 3 && meatchoice == 4
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(3).join(", ")} , #{meatchoice} #{meats.sample(4).join(", ")} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "no" && extrapepchoice == "no" && veggiechoice == 4 && meatchoice == 4
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(4).join(", ")} , #{meatchoice} #{meats.sample(4).join(", ")} and sauced with #{sauces.sample}"

 #yes break

	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 1 && meatchoice == 1
		puts  "your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} random veggie topping: #{veggies.sample}, and #{meats.sample} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 2 && meatchoice == 1
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(2).join(", ")} , and #{meats.sample} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 3 && meatchoice == 1
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(3).join(", ")} , and #{meats.sample} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 4 && meatchoice == 1
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(4).join(", ")} , and #{meats.sample} and sauced with #{sauces.sample}"


	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 1 && meatchoice == 2
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} random veggie topping: #{veggies.sample}, and #{meatchoice}  random meat toppings :#{meats.sample(2).join(", ")} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 2 && meatchoice == 2
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(2).join(", ")} , and #{meatchoice}  random meat toppings :#{meats.sample(2).join(", ")} and sauced with #{sauces.sample}"
	 elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 3 && meatchoice == 2
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(3).join(", ")} , and #{meatchoice}  random meat toppings :#{meats.sample(2).join(", ")} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 4 && meatchoice == 2
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(4).join(", ")} , and #{meatchoice}  random meat toppings :#{meats.sample(2).join(", ")} and sauced with #{sauces.sample}"
	 


	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 1 && meatchoice == 3
		puts  "your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} random veggie topping: #{veggies.sample}, and #{meatchoice}  random meat toppings :#{meats.sample(3).join(", ")} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 2 && meatchoice == 3
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(2).join(", ")} , and #{meatchoice}  random meat toppings :#{meats.sample(3).join(", ")} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 3 && meatchoice == 3
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(3).join(", ")} , and #{meatchoice}  random meat toppings :#{meats.sample(3).join(", ")} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 4 && meatchoice == 3
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(4).join(", ")} , and #{meatchoice}  random meat toppings :#{meats.sample(3).join(", ")} and sauced with #{sauces.sample}"

	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 1 && meatchoice == 4
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} random veggie topping: #{veggies.sample}, and #{meatchoice}  random meat toppings :#{meats.sample(4).join(", ")} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 2 && meatchoice == 4
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(2).join(", ")} , and #{meatchoice}  random meat toppings :#{meats.sample(4).join(", ")} and sauced with #{sauces.sample}"
	elsif pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 3 && meatchoice == 4
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(3).join(", ")} , and #{meatchoice}  random meat toppings :#{meats.sample(4).join(", ")} and sauced with #{sauces.sample}"
	else pizzas > 1 && extracheesechoice == "yes" && extrapepchoice == "yes" && veggiechoice == 4 && meatchoice == 4
		puts  "Your #{pizzamaker} #{sizechoice} pizzas, with #{crust_choice}, with #{veggiechoice} #{veggies.sample(4).join(", ")} , and #{meatchoice}  random meat toppings :#{meats.sample(4).join(", ")} and sauced with #{sauces.sample}"



















	 end
	pizzamaker += 1
end
# "You ordered #{pizzas} #{sizechoice} pizza (s), with #{crust_choice}, with #{extracheesechoice} extra cheese,
		# and #{meatchoice} topings of meat one being #{meats.sample}, with #{veggiechoice} veggie toppings one being(#{veggies.sample}), and sauced with #{sauces.sample} "
#match = players.sample(2)
#"You ordered #{pizzas} #{sizechoice} pizzas , with #{crust_choice} crust, and #{veggiechoice} #{veggies.sample(2).join(", ")} topping, and sauced with #{sauces.sample}"
puts "your total cost with taxes will be $#{totalcost}."




# # if pizzas >= 10
# # 	print "put down the pizza dude.....go on a diet or go for a walk!!!!"
# end


end
pizzaorder