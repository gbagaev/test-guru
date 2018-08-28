class User < ApplicationRecord
  def user_tests(test_level)
    UserTests.where(level: test_level)
  end
end
