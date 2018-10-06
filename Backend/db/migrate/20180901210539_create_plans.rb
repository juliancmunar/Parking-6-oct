class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.references :parqueadero, foreign_key: true
      t.references :tipos_de_cupo, foreign_key: true
      t.references :tipo_de_plan, foreign_key: true
      t.integer :valor ,null: false
      t.string :descripcion, :limit =>200

      t.timestamps
    end
  end
end
