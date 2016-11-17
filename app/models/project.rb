class Project < ApplicationRecord
	has_many :tasks
	validates :title,
		presence: { message: "空欄だと投稿できません。"},
		length: {minimum: 3, message: "３文字以上にしてね！"}
	
end
