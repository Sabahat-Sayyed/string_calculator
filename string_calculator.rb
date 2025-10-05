module StringCalculator
  class << self
	def add(*args)
		args.flatten.join(",").split(",").map(&:to_i).sum
	end
  end
end