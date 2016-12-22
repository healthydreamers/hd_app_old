class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title,        null: false, default: ""
      t.text :body,           null: false, default: ""
      t.string :url,          null: false, default: ""
      t.references :category, foreign_key: true
      t.references :user,     foreign_key: true
      t.timestamps
    end
  end
end
