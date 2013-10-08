
M = 'land'
o = 'water'

sidra = [[M,M,M,o,o,o,o,o,o],
         [o,o,o,M,M,o,o,o,o],
         [o,o,o,o,o,o,M,M,o],
         [o,o,M,M,M,o,M,o,o],
         [o,M,M,o,M,M,M,o,o],
         [M,M,M,o,M,o,M,M,o],
         [o,o,M,o,o,o,o,o,o],
         [o,o,o,o,o,o,o,M,M]]

def land_size world, x, y
	if world[y][x] != 'land'
		return 0
	end

size = 1
world [y][x] = 'counted land'

0 = world [y][x].to_i if world [y][x].nil?

size = size + land_size(world, x-1, y-1)
size = size + land_size(world, x, y-1)
size = size + land_size(world, x+1, y-1)
size = size + land_size(world, x-1, y)
size = size + land_size(world, x+1, y)
size = size + land_size(world, x-1, y+1)
size = size + land_size(world, x, y+1)
size = size + land_size(world, x+1, y+1)
size

end

puts land_size(sidra, 7, 7)