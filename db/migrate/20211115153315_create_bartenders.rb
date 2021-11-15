class CreateBartenders < ActiveRecord::Migration[6.0]
  def change
    create_table :bartenders do |t|
      t.string :city
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
