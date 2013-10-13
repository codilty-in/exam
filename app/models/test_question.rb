class TestQuestion < ActiveRecord::Base
  attr_accessible :test_id
  has_many :questions
  has_many :user_answers
  belongs_to :test
end
