class User < ApplicationRecord
  def user_tests(test_level)
    test_ids = UserTest.where(user_id: id)
    Test.where(level: test_level, id: test_ids)
  end
end
