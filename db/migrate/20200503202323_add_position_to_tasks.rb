class AddPositionToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :position, :string
  end
end