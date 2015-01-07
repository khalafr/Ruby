def factorial_iter(n)
	(2..n-1).each {|i| n *= i}
	n
end

factorial = factorial_iter 100


factorial = factorial.to_s
sum = 0
for i in 0..factorial.length-1 do
	sum += factorial[i].to_i
end

print "#{sum}"