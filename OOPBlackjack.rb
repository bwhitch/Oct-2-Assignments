#blackjack OOP version

# 1) Abstraction
# 2) Encapsulation

# Nouns(objects);  Card, Deck , Player, Dealer, Hand
# A class is like a blueprint for objects

require 'rubygems'
require 'pry'

class Card
	attr_accessor :suit, :value #this takes care of getter/setter methods for IV
	def initialize(s, v)
		@suit = s
		@value = v
	end

    def to_s
	card_display
    end

	def card_display
		puts "The #{value} of #{find_suit}."
		#note using @ directly accesses the IV.  Using just 'suit' will access
		#the getter method and allow for potential processing of info
	end

	def find_suit
		case suit  #this is like and if,elsif statement
		  when 'H' then 'Hearts'
		  when 'C' then 'Clubs'
		  when 'D' then 'Diamonds'
		  when 'S' then 'Spades'
		end
			
		end

#getter method will return information
	def suit
		@suit
	end

#setter method will allow you to change	
	def suit=(new_suit)
		@suit = new_suit
	end

end


class Deck

	attr_accessor :cards, :value
	def initialize
		@cards = []
		['H', 'D', 'S', 'C'].each do |suit|
			['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |value|
				@cards << Card.new(suit, value)
			end
		end
        scramble!
	end

	def scramble!
		cards.shuffle!
	end

	def deal_one
        cards.pop
	end

end

# I believe the module needs to proceed the classes that use it.
module Hand
	def show_hand
		puts "---#{name}'s Hand----"
		cards.each do |card|
			puts "=> #{card}"
		end
		puts "=> Total: #{total}"
	end

	def total
		face_values = cards.map{|card| card.value}

		total = 0

		face_values.each do |val|
			if val == 'A'
				total += 11
			else
			  total += (val.to_i == 0 ? 10 : val.to_i) #this is an 'or' statement
			end
		end

		#ace correction
		face_values.select{|val| val == 'A'}.count.times do
			break if total <= 21
			total -=10
		end

		total
	end

	def add_card(new_card)
		cards << new_card
	end

    def is_bust?
    	total >= 21
    end
end


class Player
	include Hand

	attr_accessor :name, :cards

	def initialize(n)
		@name = n
		@cards = []
	end

end

class Dealer
	include Hand

	attr_accessor :name, :cards
    def  initialize
    	@name = "Dealer"
    	@cards = []
    end

end

class Blackjack
	attr_accessor :deck, :player, :Dealer

	def intialize
		@deck = Deck.new
		@player =


deck = Deck.new
binding.pry #stops code wherever you put this. At end it will allow easy way
#to add code to end in terminal.  We can experiment easily without having to 
#re run all the code.  control D ends the program manually

