class CreateMotos < ActiveRecord::Migration[5.1]
  def change
    create_table :motos do |t|

      t.timestamps
    end
  end
end
