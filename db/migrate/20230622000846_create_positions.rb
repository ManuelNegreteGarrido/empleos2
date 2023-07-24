class CreatePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :positions do |t|
      t.string :title
      t.text :description
      t.text :responsibilities
      t.text :requirements
      t.integer :salary

      t.timestamps
    end
  end
end
