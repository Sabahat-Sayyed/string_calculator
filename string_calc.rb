module StringCalc
  class << self

	def add(*numbers)
		numbers.flatten.map { |x| Integer(x) rescue 0 }.sum
	end
  end
end