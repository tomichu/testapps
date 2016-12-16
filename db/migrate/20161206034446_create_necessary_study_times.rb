class CreateNecessaryStudyTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :necessary_study_times do |t|
      t.string :title
      t.integer :english_ct
      t.integer :english_lec
      t.integer :english_ct_num
      t.integer :math_ct
      t.integer :math_lec
      t.integer :math_ct_num
      t.integer :japanese_ct
      t.integer :japanese_lec
      t.integer :japanese_ct_num
      t.integer :classic_ct
      t.integer :classic_lec
      t.integer :classic_ct_num
      t.integer :japanese_history_ct
      t.integer :japanese_history_lec
      t.integer :japanese_history_ct_num

      t.timestamps
    end
  end
end
