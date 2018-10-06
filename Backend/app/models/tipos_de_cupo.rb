class TiposDeCupo < ApplicationRecord
    has_many :cupos
    has_many :tarifas
    has_many :plans
end
