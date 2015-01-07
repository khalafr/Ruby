def readInput filename
	lines = 0
	a = []
	f = File.open(filename)
	while line = f.gets
		lines += 1
		nums = []
		line.each_line(' ') { |num| nums << num.to_i }
		a << nums
	end
	f.close
	return a
end

a = readInput "numfile"
lines = a.length


(lines-2).downto(0) do |i|
	for j in 0..i
		a[i][j] += [a[i+1][j], a[i+1][j+1]].max()	
	end
end

print "#{a[0][0]}"

