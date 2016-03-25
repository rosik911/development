

menu = ["\n\n Adress Book \n\n",
		"1. Add contact",
		"2. View Adres Book",
		"3. Search contact",
		"4. Delete contact",
		"5. Exit"  ]
contacts = Hash.new
	for i in menu
	puts menu
	print "Make you choice enter the number: "
	choice = 0
	choice = gets.to_i
		if choice == 1
			i = 0
			for i in (0..10004)
				print "Enter name: "
				get_name = gets.chomp 
				print "Enter number: "
				get_number = gets.chomp
				if contacts.has_key?(get_name)
					puts "You already have that contact"
					break
				else	
					contacts[get_name] = get_number
					i = i + 1
					puts "Add more?"
					print "Answer Y or N: "
					get_answer = gets.downcase.chomp
					if get_answer == "n"
						break
					elsif get_answer == "y"

					else 
						puts "Wrong answer"
						print "Answer mast be Y or N: \n"
						break
					end
				end
			end
		
		elsif 
			choice == 2
			if contacts.empty? == true
				puts "\n\n No added contact"
			else
				contacts.each_pair {|key, value| puts "\n\n#{key} => #{value}" }
			end
		
		elsif	
			choice == 3	
				print "Enter name for search: "
				search_name = gets.chomp
				if contacts.has_key?(search_name)
					puts "\n#{search_name}" ' -- ' "#{contacts[search_name]}"
				else
					puts "\nYou not have contact with that name"
				end
		
		elsif 
			choice == 4	
				print "Enter name for delete: "
				del_name = gets.chomp
				if contacts.has_key?(del_name)
					contacts.delete(del_name.to_s) 
					puts "Contact deleted"
				else
					puts "\nYou not have contact with that name"
				end
		
		elsif 
			choice == 5
			break
		
		end
	
	end




