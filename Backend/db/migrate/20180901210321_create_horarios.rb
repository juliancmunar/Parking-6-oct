class CreateHorarios < ActiveRecord::Migration[5.1]
  def change
    create_table :horarios do |t|
      t.references :parqueadero, foreign_key: true
      t.string :dia_semana ,null: false, :limit =>10
      t.string :hora_inicio ,null: false, :limit =>5
      t.string :hora_fin ,null: false, :limit =>5

      t.timestamps
    end
  end
end
