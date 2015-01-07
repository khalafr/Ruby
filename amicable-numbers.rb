def divisorSum(n)

	sum = 1
	sqrtOfNumber = Math.sqrt(n).to_i
	
	if (n == (sqrtOfNumber * sqrtOfNumber))
		sum += sqrtOfNumber;
		sqrtOfNumber -= 1;
	end

	(2..(sqrtOfNumber)).each do |i|
		if(n%i == 0)
			sum += i + (n / i)
		end
	end

	return sum
end

sum = 0
(2..10000).each do |i|
	
	a = divisorSum(i)
	
	if(a > i && a <= 10000)
		b = divisorSum(a)
		if (i == b)
			sum += (i + a)
		end
	end
	

end

print "#{sum}"