numbers = ["zero", "one", "two", "three", "four", 
	"five", "six", "seven", "eight","nine"]
teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", 
	"fifteen", "sixteen", "seventeen", "eighteen", "nineteen" ]
tens = ["twenty","thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
hundred = "hundred"

sum = 0

sumOfSingles = 0
for i in 1..9
	sumOfSingles += numbers[i].length
end
sumOfTeens = 0
teens.each do |word| 
	sumOfTeens += word.length
end
sumOfTens = 0

tens.each do |word|
	sumOfTens += word.length
end

sumOfTens *= 10
sumOfTens += sumOfSingles*8


sumOfOneToHundred = sumOfSingles + sumOfTens + sumOfTeens

print "One to hundred #{sumOfOneToHundred}\n"
sumOfHundreds = 0
sumOfHundreds += sumOfSingles*100
sumOfHundreds += (10*sumOfOneToHundred)
sumOfHundreds += "hundred".length()*9
sumOfHundreds += "hundredand".length()*99*9
sumOfHundreds += 11


print "Singles :#{sumOfSingles}\n"
print "Teens: #{sumOfTeens}\n" 
print "Tens: #{sumOfTens}\n"
print "Sum: #{sumOfHundreds}\n"

