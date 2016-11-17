class StudentMemo < ApplicationRecord
  has_many :tasks
  
	
	def duration
		updated_at.to_i - created_at.to_i
	end
end
