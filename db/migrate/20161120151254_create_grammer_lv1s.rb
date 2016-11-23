class CreateGrammerLv1s < ActiveRecord::Migration[5.0]
  def change
    create_table :grammer_lv1s do |t|
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4
      t.integer :q5

      t.timestamps
    end
  end
end
