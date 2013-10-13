class User < ActiveRecord::Base
  attr_accessible :name, :email
  has_many :user_answers
  has_many :results
  has_many :answered_tests, class_name: "test", through: :results, foreign_key: "test_id"
end
