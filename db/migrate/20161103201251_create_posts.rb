class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :topic, foreign_key: true
      t.references :post_type, foreign_key: true
      t.string :status
      t.belongs_to :created_by
      t.belongs_to :last_edited_by

      t.timestamps
    end
  end
end
