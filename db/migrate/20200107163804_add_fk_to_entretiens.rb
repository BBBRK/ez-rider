class AddFkToEntretiens < ActiveRecord::Migration[5.1]
  def change
      add_column :entretiens, :moto_id, :integer, foreign_key: true
      add_column :entretiens, :operation_id, :integer, foreign_key: true
  end
end
