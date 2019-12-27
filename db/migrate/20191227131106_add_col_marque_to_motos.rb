class AddColMarqueToMotos < ActiveRecord::Migration[5.1]
  def change
      add_column :motos, :marque, :string
  end
end
