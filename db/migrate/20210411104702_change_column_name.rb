class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :auni_id, :integer
    remove_column :answers, :univ_id, :integer
  end
end
