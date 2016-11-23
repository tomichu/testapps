class Pexam < ApplicationRecord
	attr_accessor :student_name, :english_score_16_1, :english_dev_16_1, :english_score_16_2, :english_dev_16_2, :english_score_16_3, :english_dev_16_3, :english_score_16_4, :english_dev_16_4, :math1_score_16_1, :math1_dev_16_1, :math1_score_16_2, :math1_dev_16_2, :math1_score_16_3, :math1_dev_16_3, :math1_score_16_4, :math1_dev_16_4, :math2_score_16_1, :math2_dev_16_1, :math2_score_16_2, :math2_dev_16_2, :math2_score_16_3, :math2_dev_16_3, :math2_score_16_4, :math2_dev_16_4, :genbun_score_16_1, :genbun_dev_16_1, :genbun_score_16_2, :genbun_dev_16_2, :genbun_score_16_3, :genbun_dev_16_3, :kobun_score_16_4, :kobun_dev_16_4, :kobun_score_16_1, :kobun_dev_16_1, :kobun_score_16_2, :kobun_dev_16_2, :kobun_score_16_3, :kobun_dev_16_3, :kobun_score_16_4, :kobun_dev_16_4, :kanbun_score_16_1, :kanbun_dev_16_1, :kanbun_score_16_2, :kanbun_dev_16_2, :kanbun_score_16_3, :kanbun_dev_16_3, :kanbun_score_16_4, :kanbun_dev_16_4

	def self.to_csv(options = {})
		CSV.generate(options) do |csv|
			all.each do |pexam|
				csv << pexam.attributes.values_at(*column_names)
			end
		end
	end

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Pexam.create! row.to_hash
		end
=begin
		spreadsheet = open_spreadsheet(file)
		header = spreadsheet.row(1)
		(2..spreadsheet.last_row).each do |i|
			row = Hash[[header, spreadsheet.row(i)].transpose]
			pexam = find_by_id(row["id"]) || new
			pexam.attributes = row.to_hash.slice(*accessible_attributes)
			pexam.save!
		end
=end
	end
=begin
	def self.open_spreadsheet(file)
		case File.extname(file.original_filename)
		when ".csv" then Csv.new(file.path, nil, :ignore)
		when ".xls" then Excel.new(file.path, nil, :ignore)
		when ".xlsx" then Excelx.new(file.path, nil, :ignore)
		else raise "Unknown file type: #{file.original_filename}"
		end
	end
=end
end
