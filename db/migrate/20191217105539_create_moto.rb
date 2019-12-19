class CreateMoto < ActiveRecord::Migration[5.1]
  def change
    create_table :motos do |t|
        t.references :user, foreign_key: true
    end
  end
end
