class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.references :medical_center, null: false, foreign_key: true
      t.references :worker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
