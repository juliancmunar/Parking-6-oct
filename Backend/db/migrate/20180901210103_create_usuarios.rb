class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.decimal :calificacion ,null: false
      t.string :nombres ,null: false, :limit =>50 
      t.string :apellidos ,null: false, :limit =>50
      t.string :email ,null: false, :limit =>50
      t.string :telefono ,null: false, :limit =>20
      t.string :password_digest ,null: false
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
