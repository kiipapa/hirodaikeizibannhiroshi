class AddUnivIdToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :univ_id, :integer
  end
end
