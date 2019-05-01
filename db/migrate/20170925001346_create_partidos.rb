class CreatePartidos < ActiveRecord::Migration[5.0]
  def change
    create_table :partidos do |t|
      t.integer :resultado
      t.text :comentario
      t.date :fecha
      t.timestamps
    end
  end
end
