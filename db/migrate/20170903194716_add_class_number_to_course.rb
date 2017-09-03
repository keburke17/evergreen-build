class AddClassNumberToCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :class_number, :string
  end
end
