class CreateUserAnswers < ActiveRecord::Migration
  def self.up
    create_table :user_answers do |t|
      t.integer :test_question_id
      t.integer :answer_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user_answers
  end
end
