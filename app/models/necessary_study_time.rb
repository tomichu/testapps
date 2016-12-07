class NecessaryStudyTime < ApplicationRecord
	def summary_necessary_time
		english_ct.to_i * english_lec.to_i + math_ct.to_i * math_lec.to_i + japanese_ct.to_i * japanese_lec.to_i + classic_ct.to_i * classic_lec.to_i

	end
	def summary_necessary_time_to_hour
		summary_necessary_time / 60
	end
end
