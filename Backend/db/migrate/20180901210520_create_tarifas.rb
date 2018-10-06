class CreateTarifas < ActiveRecord::Migration[5.1]
  def change
    create_table :tarifas do |t|
      t.references :parqueadero, foreign_key: true
      t.references :tipos_de_cupo, foreign_key: true
      t.integer :valor_minuto ,null: false
      t.string :descripcion, :limit =>200

      t.timestamps
    end
  end
end
