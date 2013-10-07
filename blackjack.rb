#just getting it started


deck = [1,2,3,4,5,6,7,8,9,10,10,10,10,'Ace']

deck.shuffle!

ph = []
dh =[]

2.times do
  ph << deck.pop
  dh << deck.pop
  
end

puts 'Hand'
puts ph
puts

puts
if ph.include? 'Ace'
	puts 'Aces high!'
	ph.map! {|x| x == 'Ace' ? 11 : x}
	puts
	puts ph
end


puts 'Hand total'
sum = ph.inject(:+)
puts sum

#manage a dealer ace
if dh.include? 'Ace'
	dh.map! {|x| x == 'Ace' ? 11 : x}
end


puts 'Would you like a hit or stay?'
reply = gets.chomp

puts
if reply == 'hit'
	ph << deck.pop
	puts ph
	puts
	puts 'Hand total'
	sum = ph.inject(:+)
	puts sum
end

if reply == 'stay' and while dh.inject(:+)<17
	dh << deck.pop
	puts 'Dealer hand'
	puts dh
	if dh.include? 'Ace'
		dh.map! {|x| x == 'Ace' ? 1 : x}
	end
end
	puts
	puts 'Dealer total'
	sum = dh.inject(:+)
	puts sum

end
puts
dtotal = dh.inject(:+)
ptotal = ph.inject(:+)
puts "You have #{ptotal}"
puts "Dealer has #{dtotal}"
puts
if ph.inject(:+) > dh.inject(:+)
	puts 'You win!'
elsif dh.inject(:+) >=22
	puts 'You win'
else
	puts 'Dealer wins :('
end