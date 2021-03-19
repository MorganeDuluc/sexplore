class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :channel, null: false, foreign_key: true
      t.integer :like_count

      t.timestamps
    end
  end
end
