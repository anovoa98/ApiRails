class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :placa
      t.string :transitlog
      t.string :color
      t.belongs_to :owner
      t.belongs_to :service

      t.timestamps
    end
  end
end
