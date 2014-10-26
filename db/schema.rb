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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141026215000) do

  create_table "agendamento_de_visitas", force: true do |t|
    t.date     "data"
    t.string   "hora"
    t.integer  "imovel_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "agendamento_de_visitas", ["imovel_id"], name: "index_agendamento_de_visitas_on_imovel_id"
  add_index "agendamento_de_visitas", ["usuario_id"], name: "index_agendamento_de_visitas_on_usuario_id"

  create_table "imovels", force: true do |t|
    t.string   "endereco"
    t.float    "area"
    t.integer  "quarto"
    t.integer  "sala"
    t.integer  "cozinha"
    t.integer  "banheiro"
    t.float    "areaExterna"
    t.float    "areaDeServico"
    t.integer  "garagem"
    t.integer  "tipo_de_imovel_id"
    t.integer  "proprietario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imovels", ["proprietario_id"], name: "index_imovels_on_proprietario_id"
  add_index "imovels", ["tipo_de_imovel_id"], name: "index_imovels_on_tipo_de_imovel_id"

  create_table "proposta", force: true do |t|
    t.float    "valor"
    t.string   "status"
    t.integer  "imovel_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proposta", ["imovel_id"], name: "index_proposta_on_imovel_id"
  add_index "proposta", ["usuario_id"], name: "index_proposta_on_usuario_id"

  create_table "proprietarios", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "cpf"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_de_imovels", force: true do |t|
    t.string   "descricao"
    t.string   "tipoDeContrato"
    t.float    "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "cpf"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
