class AddColumnIllustrationToTheme < ActiveRecord::Migration[6.0]
  def change
    add_column :themes, :illustration, :string
  end
end
