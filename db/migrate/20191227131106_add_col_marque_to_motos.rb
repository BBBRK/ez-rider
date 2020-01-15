class AddColMarqueToMotos < ActiveRecord::Migration[5.1]
  def change
      add_column :motos, :marque, :integer
  end
end
