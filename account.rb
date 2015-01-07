class Account
	attr_reader :balance
	protected :balance

	def greaterBalanceThan(other)
		return @balance > other.balance
	end
end

person1 = "Tim"
person2 = person1.dup()


person1[0] = 'J'
puts person1

puts person2
