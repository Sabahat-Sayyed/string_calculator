module StringCalculator
  class << self
	def add(*args)
		args.flatten.map { |x| Integer(x) rescue 0 }.sum
	end
  end
end