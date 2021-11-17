class ChangeDescriptionInBartenders < ActiveRecord::Migration[6.0]
  def change
    change_column :bartenders, :description, :text
  end
end
