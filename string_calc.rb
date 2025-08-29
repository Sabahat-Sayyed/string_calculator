module StringCalc
  class << self

	def add(*numbers)
		str = numbers.flatten.join(',')
		return 0 if str.empty?

		if str.start_with?("//")
			delim, str = str[2..].split("\n", 2)
		else
			delim = /,|\n/
		end

		nums = str.split(delim).map(&:to_i)
		negatives = nums.select(&:negative?)
		raise "negative numbers not allowed: #{negatives.join(',')}" if negatives.any?
		nums.sum
	end

  end
end