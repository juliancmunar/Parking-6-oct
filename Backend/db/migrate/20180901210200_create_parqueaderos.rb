class CreateParqueaderos < ActiveRecord::Migration[5.1]
  def change
    create_table :parqueaderos do |t|
      t.string :nombre ,null: false, :limit =>50
      t.string :direccion ,null: false, :limit =>50
      t.string :servicios_adicionales, :limit =>200 
      t.string :caracteristicas, :limit =>200 
      t.string :condiciones, :limit =>200
      t.decimal :calificacion ,null: false
      t.string :email ,null: false, :limit =>50
      t.string :telefono1 ,null: false, :limit =>20
      t.string :telefono2, :limit =>20

      t.timestamps
    end
  end
end
