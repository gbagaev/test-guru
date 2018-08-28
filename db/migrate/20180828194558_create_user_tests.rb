class CreateUserTests < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tests do |t|
      t.integer :user_id, null: false
      t.integer :test_id, null: false

      t.timestamps
    end
  end
end
