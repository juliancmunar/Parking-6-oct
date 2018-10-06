class Plan < ApplicationRecord
  belongs_to :parqueadero
  belongs_to :tipo_de_cupo
  belongs_to :tipo_de_plan
end
