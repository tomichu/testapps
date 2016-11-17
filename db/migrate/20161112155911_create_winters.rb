class CreateWinters < ActiveRecord::Migration[5.0]
  def change
    create_table :winters do |t|
			t.string :student_name
      t.integer :mon
      t.integer :tue
      t.integer :wed
      t.integer :thr
      t.integer :fri
      t.integer :sat
      t.integer :sun

      t.timestamps
    end
  end
end
