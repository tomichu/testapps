class NecessaryStudyTime < ApplicationRecord
	def summary_necessary_time
		(english_ct.to_i + english_lec.to_i) * english_ct_num.to_i + 
			(math_ct.to_i + math_lec.to_i) * english_ct_num.to_i +
			 (japanese_ct.to_i + japanese_lec.to_i) * japanese_ct_num.to_i +
			 (classic_ct.to_i + classic_lec.to_i) * classic_ct_num.to_i +
			 (japanese_history_ct.to_i + japanese_history_lec.to_i) * japanese_history_ct_num.to_i
	end
	def summary_necessary_time_to_hour
		summary_necessary_time / 60
	end
end
