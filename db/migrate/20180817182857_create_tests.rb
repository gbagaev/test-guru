class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :title, null: false
      t.integer :level, default: 0
      t.integer :category_id
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
