class ChangeColDateToEntretiens < ActiveRecord::Migration[5.1]
  def change
      change_column :entretiens, :date, :date
  end
end
