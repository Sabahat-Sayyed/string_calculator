module StringCalc
  class << self

	def add(*numbers)
		numbers.flatten.flat_map { |n| n.to_s.split(/,|\n/) }.map(&:to_i).sum
	end

  end
end