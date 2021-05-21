class CreateSecures < ActiveRecord::Migration[6.0]
  def change
    create_table :secures do |t|
      t.string :password

      t.timestamps
    end
  end
end
