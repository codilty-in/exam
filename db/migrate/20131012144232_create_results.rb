class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.integer :test_id
      t.integer :user_id
      t.integer :no_correct
      t.integer :no_incorrect
      t.integer :no_unanswered
      t.integer :score
      t.integer :rank
      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
