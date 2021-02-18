class CreateBlogLists < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_lists do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
