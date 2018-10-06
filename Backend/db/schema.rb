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

ActiveRecord::Schema.define(version: 20180901210718) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cupos", force: :cascade do |t|
    t.bigint "parqueadero_id"
    t.bigint "tipos_de_cupo_id"
    t.integer "cantidad", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parqueadero_id"], name: "index_cupos_on_parqueadero_id"
    t.index ["tipos_de_cupo_id"], name: "index_cupos_on_tipos_de_cupo_id"
  end

  create_table "horarios", force: :cascade do |t|
    t.bigint "parqueadero_id"
    t.string "dia_semana", limit: 10, null: false
    t.string "hora_inicio", limit: 5, null: false
    t.string "hora_fin", limit: 5, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parqueadero_id"], name: "index_horarios_on_parqueadero_id"
  end

  create_table "images", force: :cascade do |t|
    t.bigint "parqueadero_id"
    t.string "url_imagen", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parqueadero_id"], name: "index_images_on_parqueadero_id"
  end

  create_table "parqueaderos", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.string "direccion", limit: 50, null: false
    t.string "servicios_adicionales", limit: 200
    t.string "caracteristicas", limit: 200
    t.string "condiciones", limit: 200
    t.decimal "calificacion", null: false
    t.string "email", limit: 50, null: false
    t.string "telefono1", limit: 20, null: false
    t.string "telefono2", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.bigint "parqueadero_id"
    t.bigint "tipos_de_cupo_id"
    t.bigint "tipo_de_plan_id"
    t.integer "valor", null: false
    t.string "descripcion", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parqueadero_id"], name: "index_plans_on_parqueadero_id"
    t.index ["tipo_de_plan_id"], name: "index_plans_on_tipo_de_plan_id"
    t.index ["tipos_de_cupo_id"], name: "index_plans_on_tipos_de_cupo_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "descripcion", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tarifas", force: :cascade do |t|
    t.bigint "parqueadero_id"
    t.bigint "tipos_de_cupo_id"
    t.integer "valor_minuto", null: false
    t.string "descripcion", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parqueadero_id"], name: "index_tarifas_on_parqueadero_id"
    t.index ["tipos_de_cupo_id"], name: "index_tarifas_on_tipos_de_cupo_id"
  end

  create_table "tipo_de_plans", force: :cascade do |t|
    t.string "tipo_de_plan", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos_de_cupos", force: :cascade do |t|
    t.string "tipo_de_cupo", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.decimal "calificacion", null: false
    t.string "nombres", limit: 50, null: false
    t.string "apellidos", limit: 50, null: false
    t.string "email", limit: 50, null: false
    t.string "telefono", limit: 20, null: false
    t.string "password_digest", null: false
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_usuarios_on_role_id"
  end

  create_table "usuarioxparqueaderos", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "parqueadero_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parqueadero_id"], name: "index_usuarioxparqueaderos_on_parqueadero_id"
    t.index ["usuario_id"], name: "index_usuarioxparqueaderos_on_usuario_id"
  end

  add_foreign_key "cupos", "parqueaderos"
  add_foreign_key "cupos", "tipos_de_cupos"
  add_foreign_key "horarios", "parqueaderos"
  add_foreign_key "images", "parqueaderos"
  add_foreign_key "plans", "parqueaderos"
  add_foreign_key "plans", "tipo_de_plans"
  add_foreign_key "plans", "tipos_de_cupos"
  add_foreign_key "tarifas", "parqueaderos"
  add_foreign_key "tarifas", "tipos_de_cupos"
  add_foreign_key "usuarios", "roles"
  add_foreign_key "usuarioxparqueaderos", "parqueaderos"
  add_foreign_key "usuarioxparqueaderos", "usuarios"
end
