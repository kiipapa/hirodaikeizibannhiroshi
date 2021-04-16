class ChangePostColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :file_name, :string
    add_column :posts, :title, :text
    add_column :posts, :content, :text
  end
end
