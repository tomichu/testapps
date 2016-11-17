class Task < ApplicationRecord
  belongs_to :project
  belongs_to :student_memo
	validates :title,
		presence: { message: "空欄だと投稿できません。"},
		length: {minimum: 3, message: "３文字以上にしてね！"}
	scope :unfinished, -> { where(done: false) }
	validates :student_name,
		presence: { message: "空欄だと投稿できません。"},
		length: {minimum: 3, message: "３文字以上にしてね！"}
	scope :unfinished, -> { where(done: false) }
end
