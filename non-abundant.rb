abundant = []


for i in 1..10
	abundant.push(i)
end
puts abundant

def isAbundant(n)
	sum = 0

	for i in 1..(n)
		if(n%i == 0)
			sum += i;
		end
	end

	if()