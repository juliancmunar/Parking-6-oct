class CreateTipoDePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_de_plans do |t|
      t.string :tipo_de_plan ,null: false, :limit =>50

      t.timestamps
    end
  end
end
