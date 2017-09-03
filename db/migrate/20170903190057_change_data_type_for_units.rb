class ChangeDataTypeForUnits < ActiveRecord::Migration[5.1]
  def up
    change_column :courses, :units, :string
  end

  def down
    change_column :courses, :units, :float
  end
end
