module StringCalc
  class << self

	def add(*args)
		str = args.flatten.join(',')
		return 0 if str.empty?

		if str.start_with?("//")
			separator, str = str[2..].split("\n", 2)
		else
			separator = /,|\n/
		end

		nums = str.split(separator).map(&:to_i)
		negatives = nums.select(&:negative?)
		raise "negative numbers not allowed: #{negatives.join(',')}" if negatives.any?
		nums.sum
	end

  end
end