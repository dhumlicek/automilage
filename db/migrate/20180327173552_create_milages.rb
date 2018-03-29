class CreateMilages < ActiveRecord::Migration[5.0]
  def change
    create_table :milages do |t|
      t.references :vehicle, foreign_key: true, index: true
      t.date :date
      t.float :milage
      t.float :amount
      t.float :cost
      t.float :mpg
      t.float :cpg
      t.float :cpm
      t.float :trip
      t.string :serviced
      t.text :notes

      t.timestamps
    end
  end
end
