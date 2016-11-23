class Admin::UsersController < ApplicationController
	def import
		if params[:csv_file].blank?
			redirect_to(admin_users_url, alert: 'インポートするCSVを選択せよ。')
		else
			num = Admin::User.import(params[:csv_file])
			redirect_to(admin_users_url, notice: "#{num.to_s}件の模試情報を追加しました。")
		end
	end
end
