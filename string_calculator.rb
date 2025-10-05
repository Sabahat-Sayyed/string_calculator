module StringCalculator
  class << self

	def add(*args)
		str = args.flatten.join(',')
		return 0 if str.empty?

		if str.start_with?("//")
			seprator, str = str[2..].split("\n", 2)
		else
			seprator = /,|\n/
		end

		nums = str.split(seprator).map(&:to_i)
		negatives = nums.select(&:negative?)
		raise "negative numbers not allowed: #{negatives.join(',')}" if negatives.any?
		nums.sum
	end

  end
end