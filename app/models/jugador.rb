class Jugador < ApplicationRecord
  has_and_belongs_to_many :equipo
  validates :apodo, presence: true
end
