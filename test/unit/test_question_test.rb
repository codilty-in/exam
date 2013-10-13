require 'test_helper'

class TestQuestionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TestQuestion.new.valid?
  end
end
