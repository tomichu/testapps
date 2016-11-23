csv_str = CSV.generate do |csv|
	csv << @admin_users.column_names
		@admin_users.all.each do |user|
		csv << user.attributes.value_at(*@admin_users.column_names)
	end
end

NKF::nkf('--sjis -Lw', csv_str)
