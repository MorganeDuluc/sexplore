class RemoveExplicationToResponse < ActiveRecord::Migration[6.0]
  def change
    remove_column :responses, :explication
  end
end
