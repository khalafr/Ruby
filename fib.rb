def fibUpTo(max)
	i1, i2 = 1, 1

	while i1 <= max
		yield i1
		i1, i2 = i2, i1+i2
	end
end

fibUpTo(1000){ |f| print f, " " }

class Array
	def find
		for i in 0...size
			value = self[i]
			return value if yield(value)
		end

		return nil
	end
end
puts
puts "Yes" if [1, 3, 5, 7, 9].find {|v| v*v > 30}
[ 1, 3, 5 ].each {|i| puts i }

puts ["H", "A", "L"].collect { |x| x.succ }

f = File.open("testfile")
f.each do |line|
	print line
end
f.close

class Array
	def inject(n)
		each { |value| n = yield(n, value) }
	end
	def sum
		inject(0) { |n, value| n+value }
	end

	def product
		inject(1) { |n, value| n*value}
	end
end

x = [ 1, 2, 3, 4, 5 ].sum()
y = [ 1, 2 , 3 , 4 , 5].product()

puts x
puts y

class File
	def File.openAndProcess(*args)
		f = File.open(*args)
		yield f
		f.close()
	end

	def File.myOpen(*args)
		aFile = File.new(*args)
		if block_given?
			yield aFile
			aFile.close
			aFile = nil
		end
		return aFile
	end
end

File.openAndProcess("testfile", "r") do |aFile|
	print while aFile.gets
end
puts
puts "This is line #$."
