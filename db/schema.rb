# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130511023301) do

  create_table "activities", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "administrators", :force => true do |t|
    t.integer  "numEmpleado"
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.integer  "idPuesto"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "clasifications", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "consultations", :force => true do |t|
    t.date     "fecha_consulta"
    t.string   "matricula"
    t.integer  "id_publicacion"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "nombre_publicacion"
  end

  create_table "especial_news", :force => true do |t|
    t.integer  "publicacion_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "publications", :force => true do |t|
    t.string   "titulo"
    t.string   "contenido"
    t.string   "imagen"
    t.integer  "clasificacion"
    t.integer  "numEmpleado"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "puestos", :force => true do |t|
    t.integer  "idPuesto"
    t.string   "Nombre"
    t.string   "Descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "registries", :force => true do |t|
    t.integer  "user_number"
    t.integer  "actividad_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "publicacion"
  end

  create_table "subjects", :force => true do |t|
    t.string   "nombre"
    t.integer  "idClasificacion"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "user_number"
    t.string   "username"
    t.string   "address"
    t.string   "phone_number"
    t.string   "email"
    t.integer  "idPuesto"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "name"
  end

  create_table "weathers", :force => true do |t|
    t.string   "weather_date"
    t.float    "wind_direction"
    t.float    "wind_speed"
    t.float    "global_radiation"
    t.float    "temperature"
    t.float    "humity"
    t.float    "atmospheric_pressure"
    t.float    "precipitation"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

end
