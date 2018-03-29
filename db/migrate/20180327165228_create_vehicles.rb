class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.string :color      
      t.boolean :owned, :default => true

      t.timestamps
    end
  end
end
