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
		str.split(delim).sum { |n| n.to_i }
	end

  end
end