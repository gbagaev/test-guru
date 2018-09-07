class User < ApplicationRecord
  has_many :authored_tests, class_name: 'Test'
  has_many :tests_users
  has_many :tests, through: :tests_users
end
