class Answer < ActiveRecord::Base
  attr_accessible :id, :question_id, :answer, :is_correct
  has_many :user_answers
  belongs_to :question
  validates_inclusion_of :is_correct, :in => [true, false]
end
