class CreateJugadors < ActiveRecord::Migration[5.0]
  def change
    create_table :jugadors do |t|
      t.string :apodo
      t.string :email
      t.timestamps
    end

    create_table :equipos do |t|
      t.belongs_to :partido, index: true
      t.timestamps
    end

    create_table :jugadors_equipos, id: false do |t|
      t.belongs_to :jugador, index: true
      t.belongs_to :equipo, index: true
    end
  end
end
