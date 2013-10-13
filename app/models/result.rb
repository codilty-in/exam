class Result < ActiveRecord::Base
  attr_accessible :test_id, :user_id, :no_correct, :no_incorrect, :no_unanswered, :score, :rank
  belongs_to :test
  belongs_to :user
end
