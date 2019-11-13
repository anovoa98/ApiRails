class CreateTypeVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :type_vehicles do |t|
      t.string :truckCrane
      t.string :motorcycleCrane
      t.string :workshopCar
      t.string :motorcicleWorkshop

      t.timestamps
    end
  end
end
