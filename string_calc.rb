module StringCalc
  class << self

  	def add(*args)
		sum=0
		args.each do |i|
			sum=sum+(i).to_i
		end
		return sum
  	end
  end
end