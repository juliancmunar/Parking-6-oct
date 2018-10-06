class CreateUsuarioxparqueaderos < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarioxparqueaderos do |t|
      t.references :usuario, foreign_key: true
      t.references :parqueadero, foreign_key: true

      t.timestamps
    end
  end
end
