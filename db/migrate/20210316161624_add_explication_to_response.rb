class AddExplicationToResponse < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :explication, :text
  end
end
