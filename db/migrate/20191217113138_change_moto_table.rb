class ChangeMotoTable < ActiveRecord::Migration[5.1]
  def change
      # rename_column :motos, :order_id, :modele_id
      add_column :motos, :user_id, :integer, foreign_key: true
  end
end
