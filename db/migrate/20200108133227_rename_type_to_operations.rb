class RenameTypeToOperations < ActiveRecord::Migration[5.1]
  def change
      rename_column :operations, :type, :nom
  end
end
