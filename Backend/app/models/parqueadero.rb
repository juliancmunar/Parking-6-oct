class Parqueadero < ApplicationRecord
    has_many :usuarioxparqueaderos
    has_many :usuarios, through: :usuarioxparqueaderos
    has_many :cupos
    has_many :horarios
    has_many :tarifas
    has_many :plans
    has_many :images
end
