class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :message
      t.integer :status
      t.references :post, foreign_key: true
      t.belongs_to :created_by
      t.belongs_to :last_edited_by
      t.timestamps
    end
  end
end
