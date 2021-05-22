class AddImgToPostsss < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :img, :string
    add_column :mainposts, :img, :string
    add_column :answers, :img, :string
    add_column :mainanswers, :img, :string
  end
end
