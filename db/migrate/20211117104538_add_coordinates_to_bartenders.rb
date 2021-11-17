class AddCoordinatesToBartenders < ActiveRecord::Migration[6.0]
  def change
    add_column :bartenders, :latitude, :float
    add_column :bartenders, :longitude, :float
  end
end
