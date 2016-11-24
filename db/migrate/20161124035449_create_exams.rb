class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.string :student_name
      t.integer :english_score_16_1
      t.float :english_dev_16_1
      t.integer :english_score_16_2
      t.float :english_dev_16_2
      t.integer :english_score_16_3
      t.float :english_dev_16_3
      t.integer :english_score_16_4
      t.float :english_dev_16_4
      t.integer :math1_score_16_1
      t.float :math1_dev_16_1
      t.integer :math1_score_16_2
      t.float :math1_dev_16_2
      t.integer :math1_score_16_3
      t.float :math1_dev_16_3
      t.integer :math1_score_16_4
      t.float :math1_dev_16_4
      t.integer :math2_score_16_1
      t.float :math2_dev_16_1
      t.integer :math2_score_16_2
      t.float :math2_dev_16_2
      t.integer :math2_score_16_3
      t.float :math2_dev_16_3
      t.integer :math2_score_16_4
      t.float :math2_dev_16_4
      t.integer :genbun_score_16_1
      t.float :genbun_dev_16_1
      t.integer :genbun_score_16_2
      t.float :genbun_dev_16_2
      t.integer :genbun_score_16_3
      t.float :genbun_dev_16_3
      t.integer :kobun_score_16_4
      t.float :kobun_dev_16_4
      t.integer :kobun_score_16_1
      t.float :kobun_dev_16_1
      t.integer :kobun_score_16_2
      t.float :kobun_dev_16_2
      t.integer :kobun_score_16_3
      t.float :kobun_dev_16_3
      t.integer :kobun_score_16_4
      t.float :kobun_dev_16_4
      t.integer :kanbun_score_16_1
      t.float :kanbun_dev_16_1
      t.integer :kanbun_score_16_2
      t.float :kanbun_dev_16_2
      t.integer :kanbun_score_16_3
      t.float :kanbun_dev_16_3
      t.integer :kanbun_score_16_4
      t.float :kanbun_dev_16_4

      t.timestamps
    end
  end
end
