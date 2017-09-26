#--------------------------------------- Calculator -------------------------------------------#
# want the calculator to be able to loop
operation=0
first =true
while operation != "q"
	puts "What would you like to do ? enter a for addition, m for substraction, x for multiplication and d for division.\n Alternatively, press p for power and r for square. \n Press q to quit. \n Enter b to calculate your BMI. \n Enter f to calculate travel expenses and time."

	operation = gets.chomp

	case

		when first === true

			if operation==="a" || operation=="m" || operation=="x" || operation == "d"

				puts"What is your first number"
				a=gets.chomp.to_f
				puts "what is your second number"
				b=gets.chomp.to_f

				if operation=="a" 
					result=a+b
				elsif operation=="m"
					result= a-b
				elsif operation=="x"
					result=a*b
				elsif operation=="d"
					result=a*b
				end
				puts result

			elsif operation=="p"
				puts "What is the number you wish to operate on"
				a=gets.chomp.to_f
				puts "What is the power"
				b=gets.chomp.to_f
				result= a**b
				puts result

			elsif operation=="r"
				puts "What is the number you wish to operate on"
				a=gets.chomp.to_f
				puts "What is the root"
				b=gets.chomp.to_f
				result = a**(1/b)
				puts result

			end

		
		a=result


			if operation==="b"
				puts "Enter m for metric system and i for imperial system"
				system = gets.chomp
				puts"Enter your weight in kg or lbs"
				weight=gets.chomp.to_f
				puts"Enter your height in m or ft"
				height=gets.chomp.to_f

				if system === "i" 
					weight=weight/2.204
					height=height*0.304
				end


				bmi=weight/(height**2)
				puts bmi

			else operation==="f"
				puts "Enter average speed "
				speed=gets.chomp.to_f
				# speed_i=speed.to_i
				puts "Enter average distance in miles or km "
				distance=gets.chomp
				if distance.include?('miles')
						distance=distance.sub!('miles','').sub!(' ','').to_f
				elsif distance.include?('km')
						distance=distance.sub!('km','').to_f
						distance=distance/1.61
				else
					distance=distance.to_f
				end
				
				# distance_i=distance.to_i
				puts " Enter price of gallon in £ "
				price=gets.chomp.to_f
				puts " Enter fuel efficiency in mpg"
				eff=gets.chomp.to_f

				time= distance/speed
				minute= ((distance/speed-(distance/speed).to_i)*60).to_i
				time="#{(distance/speed).to_i} : #{minute} "
				puts time

				if speed > 60
					reduction=(speed-60)*2
					eff-=reduction
				end


				price = prince/mpg*distance

				puts price
			end

			first = false

		else 
			if operation==="a" || operation=="m" || operation=="x" || operation == "d"
				puts "what is your next number"
				b=gets.chomp.to_f

				if operation=="a" 
					result=a+b
				elsif operation=="m"
					result= a-b
				elsif operation=="x"
					result=a*b
				elsif operation=="d"
					result=a*b
				end
				puts result

			elsif operation=="p"
				puts "What is the power"
				b=gets.chomp.to_f
				result= a**b
				puts result

			elsif operation=="r"
				puts "What is the root"
				b=gets.chomp.to_f
				result = a**(1/b)
				puts result
			end
			a=result

		end
	end	
puts "Program ended"



#-------------------------------------------End------------------------------------------------#












