class CreateMainlikes < ActiveRecord::Migration[6.0]
  def change
    create_table :mainlikes do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
