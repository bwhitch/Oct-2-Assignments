puts 'Ex 1)'
#1
arr =[1,2,3,4,5,6,7,8,9,10]

arr.each {|element| puts element}

puts
puts 'Ex 2)'
arr.each do |element|
	if element > 5 
	puts element
	end
end

puts
#or
arr.each {|element| puts element if element>5}

puts 'Ex 3)'
new_arr = arr.select {|e| e % 2 !=0}
puts new_arr

puts
puts 'Ex 4)'
	puts arr << 11
	puts
	puts arr.unshift(0)

puts
puts 'Ex 5)'
	puts arr.pop
	puts
	puts arr << 3

puts
puts 'Ex 6)'
	puts arr.uniq!

puts
puts 'Ex 7)'
# An array is an ordered, integer indexed, collection of objects.
# A hash is not ordered and indexing is done by arbritary keys of any type. 
# A hash is a collection of value pairs rather than objects.

puts
puts 'Ex 8)'
	puts g={:a=>1, :b=>2, :c=>3}
	puts
	puts h= {a:1,b:2, c:3, d:4}

puts
puts 'Ex 9)'
	puts h[:b]

puts
puts 'Ex 10)'
	puts h[:e]=5

puts
puts 'Ex 13)'
	puts h.delete_if{|k,v| v <3.5}

puts

puts 'Ex 14)'
	puts arr << h
	puts
	puts h[:m] = arr

puts
puts 'Ex 15)'
#So far just looked at ruby-doc.org
#A quick google search did show me that there are probably
#some other good resources out there.  Will explore more












