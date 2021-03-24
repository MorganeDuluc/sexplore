class AddColumnAvatarToChannel < ActiveRecord::Migration[6.0]
  def change
    add_column :channels, :avatar, :string
  end
end
