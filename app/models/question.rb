class Question < ActiveRecord::Base
  attr_accessible :test_question_id, :question, :answers_attributes
  has_many :answers
  belongs_to :test_question
  #has_many :tests, through: :test_questions
  accepts_nested_attributes_for :answers, allow_destroy: true 
end
