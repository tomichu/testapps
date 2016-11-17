class Winter < ApplicationRecord
	def sum_12
		mon.to_i*1 + tue.to_i*1 + wed.to_i*1 + thr.to_i*2 + fri.to_i*0
	end
	def sum_01
		mon.to_i*0 + tue.to_i*1 + wed.to_i*2 + thr.to_i*2 + fri.to_i*2
	end
end
