class AddFkToModeles < ActiveRecord::Migration[5.1]
  def change
      add_column :modeles, :marque_id, :integer, foreign_key: true
  end
end
