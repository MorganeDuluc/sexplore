class RemoveCategoryFromTheme < ActiveRecord::Migration[6.0]
  def change
    remove_column :themes, :category
  end
end
