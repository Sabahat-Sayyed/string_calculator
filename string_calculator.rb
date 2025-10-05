module StringCalculator
  class << self
	def add(*args)
		args.flatten.flat_map { |n| n.to_s.split(/,|\n/) }.map(&:to_i).sum
	end
  end
end