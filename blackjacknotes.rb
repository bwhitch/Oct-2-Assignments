#blackjacknotes
def calculate_total(cards)
	arr = cards.map{|e| e[1] } #this will grab card values

	total = 0
	arr.each do |value|
		if value == 'A'
			total += 11
		elsif value.to_i == 0 # note a string returns  integer value 0
			total = total +10
		else
			total += value.to_i # += adds value to total
		end
	end
	#correct for aces
	arr.select {|e| e == 'A'}.count.times do #this will count items returned in select and apply to the times method
		total -= 10 if total > 21 #can do if's like this when no else statement
		end


	#if arr.include?('A') && total > 21
		#total -= 10
	#end

	total
end

puts 'Welcome to Blackjack'

suits = ['H', 'D', 'S', 'C']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

# do an array product method
deck = suits.product(cards)

#note this is the manual way to do this
# deck = []
# suits.each do |suit|
#   cards.each do |card|
#     deck << [suit,card]

deck = deck.shuffle!

ph = []
dh = []

2.times do 
ph << deck.pop
dh << deck.pop
end

dtotal = calculate_total(dh)
ptotal = calculate_total(ph)

#show cards
puts "Dealer has: #{dh[0]} and #{dh[1]}, for a total of: #{dtotal}"
puts "You have: #{ph[0]} and #{ph[1]}, for a total of: #{ptotal}"
puts

# player turn
if ptotal == 21
	puts 'Blackjack! You win!'
	exit
end
 
while  ptotal < 21
  puts "Hit or stay?"
  reply = gets.chomp

  if !['hit', 'stay'].include?(reply)
	puts 'Error: Please reply hit or stay'
	next #this will restart the while loop
  end

  if reply == 'stay'
  	puts "You chose to stay at #{ptotal}"
 	break #this will exit the while loop
  end

  new_card = deck.pop
  puts "Your next card is: #{new_card}"
  ph << new_card
  ptotal = calculate_total(ph)
  puts "Your total is now: #{ptotal}"
 
  if ptotal == 21
	puts 'Blackjack! You win!'
	exit
  elsif ptotal > 21
	puts "sorry, you busted"
	exit
  end	
end

#dealer turn
if dtotal == 21
	puts "Dealer hit Blackjack, dealer wins."
	exit
end

while dtotal < 17
  
  new_card = deck.pop
  puts "Dealers next card is: #{new_card}"
  dh << new_card
  dtotal = calculate_total(dh)
  puts "Dealer total is now: #{dtotal}"
 
  if dtotal == 21
	puts 'Blackjack! Dealer wins'
	exit
  elsif dtotal > 21
	puts "Dealer busted, you win!"
	exit
  end	
end

puts "Dealer has: #{dtotal}.  You have: #{ptotal}."
if ptotal > dtotal
	puts "You win!"
elsif dtotal > ptotal
	puts "Dealer wins"
else dtotal = ptotal
	puts "It's a tie"
end

