class CreateTestQuestions < ActiveRecord::Migration
  def self.up
    create_table :test_questions do |t|
      t.integer :test_id
      t.timestamps
    end
  end

  def self.down
    drop_table :test_questions
  end
end
