class Tarifa < ApplicationRecord
  belongs_to :parqueadero
  belongs_to :tipo_de_cupo
end
