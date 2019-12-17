class AddColToMarques < ActiveRecord::Migration[5.1]
  def change

      add_column :marques, :nom, :string
  end
end
