class ChangeColDateToMotos < ActiveRecord::Migration[5.1]
  def change
      change_column :motos, :date_circu, :date
      change_column :motos, :date_modif, :date
  end
end
