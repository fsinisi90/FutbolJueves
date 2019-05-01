class Equipo < ApplicationRecord
  has_and_belongs_to_many :jugador
end
