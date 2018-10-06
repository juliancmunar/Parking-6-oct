class CreateCupos < ActiveRecord::Migration[5.1]
  def change
    create_table :cupos do |t|
      t.references :parqueadero, foreign_key: true
      t.references :tipos_de_cupo, foreign_key: true
      t.integer :cantidad ,null: false

      t.timestamps
    end
  end
end
