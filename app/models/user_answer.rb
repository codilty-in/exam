class UserAnswer < ActiveRecord::Base
  attr_accessible :test_question_id, :answer_id, :user_id
  belongs_to :user
  belongs_to :test_question
  belongs_to :answer
end
