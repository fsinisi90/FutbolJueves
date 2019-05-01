# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170925001346) do

  create_table "equipos", force: :cascade do |t|
    t.integer  "partido_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partido_id"], name: "index_equipos_on_partido_id"
  end

  create_table "jugadors", force: :cascade do |t|
    t.string   "apodo"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jugadors_equipos", id: false, force: :cascade do |t|
    t.integer "jugador_id"
    t.integer "equipo_id"
    t.index ["equipo_id"], name: "index_jugadors_equipos_on_equipo_id"
    t.index ["jugador_id"], name: "index_jugadors_equipos_on_jugador_id"
  end

  create_table "partidos", force: :cascade do |t|
    t.integer  "resultado"
    t.text     "comentario"
    t.date     "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
