# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# [User, Category, Test, Question, Answer].each(&:destroy_all)

users = User.create([
                        { name: 'user1', email: 'user1@tg.com', password: '1' },
                        { name: 'user2', email: 'user2@tg.com', password: '2' }
                    ])

category1 = Category.create(title: 'English')
category2 = Category.create(title: 'Japanese')
category3 = Category.create(title: 'Korean')

test1 = Test.create(title: 'English writing', category_id: category1.id)
test2 = Test.create(title: 'English writing', level: 1, category_id: category1.id)
test3 = Test.create(title: 'English grammar', level: 1, category_id: category1.id)
test4 = Test.create(title: 'English grammar', level: 2, category_id: category1.id)
test5 = Test.create(title: 'Japanese writing', level: 2, category_id: category2.id)
test6 = Test.create(title: 'Japanese writing', level: 3, category_id: category2.id)
test7 = Test.create(title: 'Japanese grammar', level: 2, category_id: category2.id)

question1 = Question.create(body: 'Easy English writing question 1', test_id: test1.id)
question2 = Question.create(body: 'Easy English writing question 2', test_id: test1.id)
question3 = Question.create(body: 'Easy English grammar question 1', test_id: test3.id)
question4 = Question.create(body: 'Hard English grammar question 1', test_id: test4.id)
question5 = Question.create(body: 'Hard Japanese writing question 1', test_id: test6.id)
question6 = Question.create(body: 'Hard Japanese writing question 2', test_id: test6.id)

Answer.create([
                  { body: 'Easy English writing answer 1', question_id: question1.id },
                  { body: 'Easy English writing answer 2', question_id: question2.id },
                  { body: 'Easy English grammar answer 1', question_id: question3.id, correct: true },
                  { body: 'Hard English grammar answer 1', question_id: question4.id },
                  { body: 'Japanese writing answer 1', question_id: question5.id, correct: true },
                  { body: 'Japanese writing answer 2', question_id: question6.id, correct: true }
              ])

test1.users.push(users[0])
test2.users.push(users[0])
test3.users.push(users[0])
test4.users.push(users[1])
test5.users.push(users[1])
