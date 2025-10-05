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
		str.split(seprator).sum { |n| n.to_i }
	end
  end
end
