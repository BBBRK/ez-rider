class AddColPhotoToMotos < ActiveRecord::Migration[5.1]
  def change
      add_column :motos, :photo, :string
  end
end
