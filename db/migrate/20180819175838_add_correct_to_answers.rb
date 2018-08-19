class AddCorrectToAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :correct, :string
  end
end
