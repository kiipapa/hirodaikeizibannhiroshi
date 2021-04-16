class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
