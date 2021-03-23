class CreateUserQuizResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :user_quiz_responses do |t|
      t.references :response, null: false, foreign_key: true
      t.references :user_quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
