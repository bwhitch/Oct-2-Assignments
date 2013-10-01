puts 'welcome to the calculator'

 puts 'what is first nubmer?'
 num1 = gets.chomp

puts 'What is the second number?'

num2 = gets.chomp

puts  'What to do? 1) add  2) sub  3) mult  4) divide'
operator = gets.chomp

if operator == '1'
	result = num1.to_i + num2.to_i
elsif operator == '2'
	result = num1.to_i - num2.to_i
elsif operator =='3'
	result = num1.to_i * num2.to_i
elsif operator == '4'
	result = num1.to_f/num2.to_f
end

puts 'Answer is ' + result.to_s

