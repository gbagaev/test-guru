class User < ApplicationRecord
  def user_tests(test_level)
    # test_ids = UserTest.where(user_id: id).pluck(:test_id)
    # Test.where(level: test_level, id: test_ids)

    # Test.joins('INNER JOIN user_tests ON user_tests.test_id = tests.id').where('user_tests.user_id' => id, 'tests.level' => test_level)

    Test.joins("INNER JOIN user_tests ON user_tests.test_id = tests.id").where(user_tests: { user_id: id }, tests: { level: test_level })
  end
end
