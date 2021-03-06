# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090427183830) do

  create_table "invoices", :force => true do |t|
    t.integer  "user_id"
    t.string   "service"
    t.integer  "amount"
    t.string   "begin_period"
    t.string   "end_period"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipios", :force => true do |t|
    t.string  "name"
    t.integer "provincia_id"
  end

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "provincia_id"
    t.integer  "municipio_id"
    t.string   "edificio_anyo",                       :limit => 4
    t.string   "edificio_periodo",                    :limit => 32
    t.string   "vivienda_tipo_edificio",              :limit => 32
    t.integer  "vivienda_num_plantas"
    t.string   "vivienda_planta"
    t.integer  "vivienda_estancias"
    t.integer  "vivienda_servicios"
    t.string   "vivienda_tejado"
    t.float    "vivienda_superficie"
    t.boolean  "vivienda_aistejado"
    t.boolean  "vivienda_aisparedes"
    t.boolean  "vivienda_toldos"
    t.boolean  "vivienda_doblevidrio"
    t.boolean  "vivienda_asisuelo"
    t.string   "vivienda_reforma_ultima",             :limit => 32
    t.boolean  "equip_fuentes_calef_electr"
    t.boolean  "equip_fuentes_calef_gasnat"
    t.boolean  "equip_fuentes_calef_gasoleo"
    t.boolean  "equip_fuentes_calef_gasbutprop"
    t.boolean  "equip_fuentes_calef_solar"
    t.boolean  "equip_fuentes_calef_madera"
    t.boolean  "equip_fuentes_calef_otros"
    t.boolean  "equip_fuentes_aire_electr"
    t.boolean  "equip_fuentes_aire_gasnat"
    t.boolean  "equip_fuentes_aire_gasoleo"
    t.boolean  "equip_fuentes_aire_gasbutprop"
    t.boolean  "equip_fuentes_aire_solar"
    t.boolean  "equip_fuentes_aire_madera"
    t.boolean  "equip_fuentes_aire_otros"
    t.boolean  "equip_fuentes_agua_electr"
    t.boolean  "equip_fuentes_agua_gasnat"
    t.boolean  "equip_fuentes_agua_gasoleo"
    t.boolean  "equip_fuentes_agua_gasbutprop"
    t.boolean  "equip_fuentes_agua_solar"
    t.boolean  "equip_fuentes_agua_madera"
    t.boolean  "equip_fuentes_agua_otros"
    t.string   "equip_agua_caliente",                 :limit => 3
    t.string   "equip_agua_tipo",                     :limit => 8
    t.string   "equip_agua_solar",                    :limit => 3
    t.integer  "equip_agua_edad",                     :limit => 3
    t.string   "equip_agua_caldera_tipo",             :limit => 8
    t.string   "equip_agua_caldera_acumulacion",      :limit => 3
    t.string   "equip_calefaccion",                   :limit => 3
    t.string   "equip_calefaccion_tipo",              :limit => 8
    t.string   "equip_calefaccion_donde_salas",       :limit => 8
    t.string   "equip_calefaccion_donde_dormitorios", :limit => 8
    t.integer  "equip_calefaccion_edad",              :limit => 3
    t.string   "equip_calefaccion_misma",             :limit => 3
    t.string   "equip_calefaccion_caldera_tipo",      :limit => 8
    t.string   "equip_calefaccion_bomba_tipo",        :limit => 8
    t.string   "equip_ac",                            :limit => 3
    t.string   "equip_ac_donde_salas",                :limit => 8
    t.string   "equip_ac_donde_dormitorios",          :limit => 8
    t.string   "equip_ac_tipo",                       :limit => 8
    t.integer  "equip_ac_edad",                       :limit => 3
    t.integer  "equip_disp_tiene_lavadora"
    t.integer  "equip_disp_tiene_lavavajillas"
    t.integer  "equip_disp_tiene_frigo"
    t.integer  "equip_disp_tiene_hornoel"
    t.integer  "equip_disp_tiene_hornonoel"
    t.integer  "equip_disp_tiene_microondas"
    t.integer  "equip_disp_tiene_tele"
    t.integer  "equip_disp_tiene_ordenador"
    t.integer  "equip_disp_tiene_portatil"
    t.integer  "equip_disp_tiene_secadora"
    t.integer  "equip_disp_tiene_congelador"
    t.integer  "equip_ilum_tiene_incan"
    t.integer  "equip_ilum_tiene_bajocon"
    t.integer  "equip_ilum_tiene_fluor"
    t.integer  "costumbres_personas"
    t.integer  "costumbres_horas"
    t.text     "opinion"
  end

  create_table "provincias", :force => true do |t|
    t.string "name"
  end

  create_table "reports", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password", :limit => 128
    t.string   "salt",               :limit => 128
    t.string   "token",              :limit => 128
    t.datetime "token_expires_at"
    t.boolean  "email_confirmed",                   :default => true, :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["id", "token"], :name => "index_users_on_id_and_token"
  add_index "users", ["token"], :name => "index_users_on_token"

end
