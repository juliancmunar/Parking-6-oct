class Usuario < ApplicationRecord
  has_secure_password
  belongs_to :role
  has_many :usuarioxparqueaderos
  has_many :parqueaderos, through: :usuarioxparqueaderos
end
