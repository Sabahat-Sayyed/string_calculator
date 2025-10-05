module StringCalculator
  class << self

	def add(*args)
	  numbers = args.join(",")
	  return 0 if numbers.empty?

	  if numbers.start_with?("//")
	    separator, numbers = numbers[2..].split("\n", 2)
	  else
	    separator = /,|\n/
	  end

	  nums = numbers.split(separator).map(&:to_i)
	  negatives = nums.select(&:negative?)
	  raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

	  nums.sum
	end

  end
end