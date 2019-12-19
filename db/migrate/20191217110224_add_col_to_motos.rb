class AddColToMotos < ActiveRecord::Migration[5.1]
  def change

      add_column :motos, :date_circu, :datetime
      add_column :motos, :km, :integer
      add_column :motos, :date_modif, :datetime
  end
end
