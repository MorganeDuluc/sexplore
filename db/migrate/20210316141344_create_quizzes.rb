class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.references :theme, null: false, foreign_key: true
      t.boolean :finished
      t.string :level

      t.timestamps
    end
  end
end
