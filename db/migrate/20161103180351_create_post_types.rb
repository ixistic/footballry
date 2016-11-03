class CreatePostTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :post_types do |t|
      t.string :name
      t.belongs_to :created_by
      t.belongs_to :last_edited_by
      t.timestamps
    end
  end
end
