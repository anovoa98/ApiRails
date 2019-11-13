class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.boolean :truckCrane
      t.boolean :motorCycleCrane
      t.boolean :workshopCar
      t.string :motorcicleWorkshop

      t.timestamps
    end
  end
end
