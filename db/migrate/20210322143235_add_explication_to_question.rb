class AddExplicationToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :explication, :text
  end
end
