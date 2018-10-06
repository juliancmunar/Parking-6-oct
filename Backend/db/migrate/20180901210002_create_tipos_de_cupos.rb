class CreateTiposDeCupos < ActiveRecord::Migration[5.1]
  def change
    create_table :tipos_de_cupos do |t|
      t.string :tipo_de_cupo ,null: false, :limit =>50

      t.timestamps
    end
  end
end
