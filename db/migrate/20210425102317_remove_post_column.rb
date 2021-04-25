class RemovePostColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :title, :text
    remove_column :mainposts, :title, :text
  end
end
