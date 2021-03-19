class AddColumnsToQuizzes < ActiveRecord::Migration[6.0]
  def change
    add_column :quizzes, :title, :string
    add_column :quizzes, :question_number, :string
  end
end
