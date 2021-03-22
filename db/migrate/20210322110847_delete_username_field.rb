class DeleteUsernameField < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :username, :string
    remove_index :users, :email
  end
end
