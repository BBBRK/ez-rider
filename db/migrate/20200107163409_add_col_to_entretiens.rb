class AddColToEntretiens < ActiveRecord::Migration[5.1]
  def change
      add_column :entretiens, :description, :string
      add_column :entretiens, :date, :datetime
      add_column :entretiens, :km, :integer
      add_column :entretiens, :prix, :string
  end
end
