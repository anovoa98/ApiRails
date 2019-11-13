class CreateInsurancePolices < ActiveRecord::Migration[6.0]
  def change
    create_table :insurance_polices do |t|
      t.string :basic
      t.string :standard
      t.string :premium

      t.timestamps
    end
  end
end
