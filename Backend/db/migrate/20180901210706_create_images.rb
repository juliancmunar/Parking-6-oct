class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.references :parqueadero, foreign_key: true
      t.string :url_imagen, :limit =>200

      t.timestamps
    end
  end
end
