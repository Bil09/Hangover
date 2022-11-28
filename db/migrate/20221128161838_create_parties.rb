class CreateParties < ActiveRecord::Migration[7.0]
  def change
    create_table :parties do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.float :longitude
      t.float :latitude
      t.time :start_time

      t.timestamps
    end
  end
end
