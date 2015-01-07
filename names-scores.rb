def readInput filename
	lines = 0
	a = []
	f = File.open(filename)
	while line = f.gets
		line = line.gsub(/"/, '')
		line = line.gsub(/,/, ' ')
		
		line.each_line(' ') { |name| a << name.chomp(' ') }

	end
	f.close
	return a
end

a = readInput("names")

sum = 0
a.sort!


for i in 0..a.length-1
	
	name = a[i]
	sumOfName = 0
	name.downcase!
	name.each_byte {|c| sumOfName += (c-96)}

	sum += sumOfName*(i+1)
end

print "#{sum}\n"