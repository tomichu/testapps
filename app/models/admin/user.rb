class Admin::User < ApplicationRecord
	def self.import(file)
		imported_num = 0

		csv = CSV.new(f, :headers => :first_row)
		csv.each do |row|
			next if row.header_row?
			table = Hash[[row.headers, row.fields].transpose]

			user = find_by(:id => table["id"])
			if user.nil?
				user = new
			end

			user.attributes = table.to_hash.slice(
				*table.to_hash.except(:id, :created_at, :updated_at).keys
			)

			if user.valid?
				user.save!
				imported_num += 1
			end
		end
	end
	imported_num
end
