class AddColToModeles < ActiveRecord::Migration[5.1]
  def change
      add_column :modeles, :nom, :string
  end
end
