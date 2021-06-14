class CreateEnsayos < ActiveRecord::Migration[6.1]
  def change
    create_table :ensayos do |t|
      t.string :name

      t.timestamps
    end
  end
end
