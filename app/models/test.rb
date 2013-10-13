class Test < ActiveRecord::Base
  attr_accessible :name, :no_of_questions
  has_many :results
  has_many :test_questions
  has_many :users, through: :results, foreign_key: "user_id" 
  #has_many :questions, through: :test_questions
  accepts_nested_attributes_for :test_questions, allow_destroy: true
end
