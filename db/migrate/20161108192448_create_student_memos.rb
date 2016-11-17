class CreateStudentMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :student_memos do |t|
      t.string :student_name
      t.integer :ennea
      t.integer :ct_times
      t.string :going_school
      t.string :grade
      t.string :preferred_school
      t.string :subject
      t.string :textbook
      t.integer :textbook_number
      t.text :record
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
