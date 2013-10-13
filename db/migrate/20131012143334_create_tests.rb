class CreateTests < ActiveRecord::Migration
  def self.up
    create_table :tests do |t|
      t.string :name
      t.integer :no_of_questions
      t.timestamps
    end
  end

  def self.down
    drop_table :tests
  end
end
