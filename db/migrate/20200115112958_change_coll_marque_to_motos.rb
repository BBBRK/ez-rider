class ChangeCollMarqueToMotos < ActiveRecord::Migration[5.1]
  def change
            change_column :motos, :marque_id, :integer, using: 'marque_id::integer'
  end
end
