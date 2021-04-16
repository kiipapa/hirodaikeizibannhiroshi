class CreateMainanswers < ActiveRecord::Migration[6.0]
  def change
    create_table :mainanswers do |t|
      t.text :content
      t.integer :post_id
      t.integer :user_id
      t.integer :acode_id

      t.timestamps
    end
  end
end
