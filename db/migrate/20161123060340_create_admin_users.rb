class CreateAdminUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_users do |t|

			t.integer :imported_num
			
			t.integer :english_score_1
			t.float :english_deviation_1
			t.integer :english_score_2
			t.float :english_deviation_2


      t.timestamps
    end
  end
end
