require 'test_helper'

class UserAnswerTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert UserAnswer.new.valid?
  end
end
