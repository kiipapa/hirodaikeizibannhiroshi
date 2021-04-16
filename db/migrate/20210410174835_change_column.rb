class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :post_id, :integer
    add_column :posts, :univ_id, :integer
  end
end
