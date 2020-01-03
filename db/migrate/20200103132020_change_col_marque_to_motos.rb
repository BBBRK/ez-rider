class ChangeColMarqueToMotos < ActiveRecord::Migration[5.1]
  def change
      change_column :motos, :marque, :integrer
      rename_column :motos, :marque, :marque_id
  end
end
