module StringCalc
  class << self

	def add(*numbers)
		numbers.flatten.join(",").split(",").map(&:to_i).sum
	end
  end
end