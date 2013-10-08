# Most of this code is verbatim from pg 73 in learn to program
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

land_size(world, x, y) = 0 if land_size(world, x, y).nil?

world[y][x] = 'counted land'


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

puts land_size(sidra, 4, 5)