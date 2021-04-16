class CreateMainposts < ActiveRecord::Migration[6.0]
  def change
    create_table :mainposts do |t|
      t.text :title
      t.text :content
      t.integer :code_id
      t.integer :user_id

      t.timestamps
    end
  end
end
