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

ActiveRecord::Schema.define(version: 20141206103014) do

  create_table "animalisearches", force: true do |t|
    t.string   "keywords"
    t.string   "keywords1"
    t.string   "keywords2"
    t.string   "keywords3"
    t.string   "keywords4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arees", force: true do |t|
    t.string   "nome"
    t.text     "localizzazione"
    t.text     "ev_descrizione"
    t.integer  "modulo2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "arees", ["modulo2_id"], name: "index_arees_on_modulo2_id", using: :btree

  create_table "categories", force: true do |t|
    t.integer  "macrocategorie_id"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["macrocategorie_id"], name: "index_categories_on_macrocategorie_id", using: :btree

  create_table "macrocategories", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microcategories", force: true do |t|
    t.integer  "categorie_id"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microcategories", ["categorie_id"], name: "index_microcategories_on_categorie_id", using: :btree

  create_table "mineralisearches", force: true do |t|
    t.string   "keywords"
    t.string   "keywords1"
    t.string   "keywords2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modulo1s", force: true do |t|
    t.string   "nome_progetto"
    t.string   "istituzione_riferimento_progetto"
    t.string   "istituzioni_coinvolte_progetto"
    t.text     "settore_scientifico_progetto"
    t.text     "obiettivi_progetto"
    t.datetime "data_inizio_progetto"
    t.datetime "data_fine_progetto"
    t.text     "url_progetto"
    t.text     "background_razionale"
    t.text     "assiomi_background"
    t.text     "domande_background"
    t.text     "ipotesi_background"
    t.text     "note_background"
    t.string   "tipologia_organizzazione"
    t.string   "altro_organizzazione"
    t.string   "campo_studio_applicazione_organizzazione"
    t.string   "nazione_organizzazione"
    t.string   "regione_organizzazione"
    t.string   "provincia_organizzazione"
    t.string   "indirizzo_organizzazione"
    t.string   "tel_organizzazione"
    t.string   "email_organizzazione"
    t.string   "persona_di_riferimento_organizzazione"
    t.string   "coordinatore_relatore_team"
    t.text     "url_organizzazione"
    t.string   "titolare_rilevatore_team"
    t.text     "elenco_nominale_operatori_tecnici_team"
    t.integer  "user_id"
    t.string   "responsabile_riferimento_rnt"
    t.boolean  "Approvato"
    t.string   "macrocat_sett_scient"
    t.string   "cat_sett_scient"
    t.string   "microcatt_sett_scient"
    t.integer  "macrocategorie_id"
    t.integer  "categorie_id"
    t.integer  "microcategorie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modulo1s", ["user_id"], name: "index_modulo1s_on_user_id", using: :btree

  create_table "modulo1searches", force: true do |t|
    t.string   "keywords"
    t.string   "keywords1"
    t.string   "keywords2"
    t.string   "keywords3"
    t.string   "keywords4"
    t.string   "keywords5"
    t.integer  "macrocategory_id"
    t.integer  "category_id"
    t.integer  "microcategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modulo2s", force: true do |t|
    t.text     "sottoprogetti"
    t.text     "difficolta"
    t.text     "suggerimenti"
    t.text     "note"
    t.text     "condizioni_iniziali"
    t.text     "processi_in_atto"
    t.text     "storia"
    t.integer  "team_id"
    t.integer  "variabili_id"
    t.integer  "organismi_numero"
    t.string   "organismi_tipologia"
    t.integer  "sistemi_biologici_id"
    t.text     "disegno_sperimentale"
    t.text     "metodo_campionamento"
    t.text     "descrizione_campioni"
    t.text     "variabili_ambientali"
    t.text     "altre_variabili"
    t.integer  "raster_id"
    t.text     "materializzazione"
    t.text     "altro"
    t.integer  "riferimenti_spaziali_id"
    t.integer  "transetti_id"
    t.integer  "aree_id"
    t.integer  "plots_id"
    t.text     "descrizione_percorso"
    t.integer  "numero_di_ingressi"
    t.text     "punto_di_ingresso"
    t.datetime "data_inizio"
    t.datetime "data_fine"
    t.text     "copertura_temporale"
    t.text     "abstract"
    t.text     "citazioni_bibliografiche"
    t.text     "citazioni_abstract"
    t.text     "documenti_files"
    t.text     "localizzazione_documenti"
    t.string   "referente"
    t.string   "proprietario_autore"
    t.text     "materiale_consegnato"
    t.text     "bibliografia_moduli1e2"
    t.integer  "modulo1_id"
    t.integer  "user_id"
    t.string   "compilatore"
    t.text     "ElencoVariabili"
    t.text     "descrizione_riferimenti_spaziali"
    t.string   "titolo_modulo1"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modulo2s", ["aree_id"], name: "index_modulo2s_on_aree_id", using: :btree
  add_index "modulo2s", ["modulo1_id"], name: "index_modulo2s_on_modulo1_id", using: :btree
  add_index "modulo2s", ["plots_id"], name: "index_modulo2s_on_plots_id", using: :btree
  add_index "modulo2s", ["raster_id"], name: "index_modulo2s_on_raster_id", using: :btree
  add_index "modulo2s", ["riferimenti_spaziali_id"], name: "index_modulo2s_on_riferimenti_spaziali_id", using: :btree
  add_index "modulo2s", ["sistemi_biologici_id"], name: "index_modulo2s_on_sistemi_biologici_id", using: :btree
  add_index "modulo2s", ["team_id"], name: "index_modulo2s_on_team_id", using: :btree
  add_index "modulo2s", ["transetti_id"], name: "index_modulo2s_on_transetti_id", using: :btree
  add_index "modulo2s", ["user_id"], name: "index_modulo2s_on_user_id", using: :btree
  add_index "modulo2s", ["variabili_id"], name: "index_modulo2s_on_variabili_id", using: :btree

  create_table "modulo2searches", force: true do |t|
    t.string   "keywords"
    t.string   "keywords1"
    t.string   "keywords2"
    t.string   "keywords3"
    t.string   "keywords4"
    t.string   "keywords5"
    t.integer  "modulo1_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "naziones", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organismis", force: true do |t|
    t.string   "genere"
    t.string   "specie"
    t.text     "riferimento"
    t.string   "famiglia"
    t.string   "ordine"
    t.text     "note"
    t.text     "referenze"
    t.text     "descrizione"
    t.integer  "modulo2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "organismis", ["modulo2_id"], name: "index_organismis_on_modulo2_id", using: :btree

  create_table "organizzazione_di_riferimentos", force: true do |t|
    t.string   "nome"
    t.integer  "nazione_id"
    t.integer  "regione_id"
    t.integer  "provincia_id"
    t.string   "indirizzo"
    t.string   "referente"
    t.string   "email"
    t.string   "tel"
    t.string   "cell"
    t.integer  "modulo2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "organizzazione_di_riferimentos", ["modulo2_id"], name: "index_organizzazione_di_riferimentos_on_modulo2_id", using: :btree
  add_index "organizzazione_di_riferimentos", ["nazione_id"], name: "index_organizzazione_di_riferimentos_on_nazione_id", using: :btree
  add_index "organizzazione_di_riferimentos", ["provincia_id"], name: "index_organizzazione_di_riferimentos_on_provincia_id", using: :btree
  add_index "organizzazione_di_riferimentos", ["regione_id"], name: "index_organizzazione_di_riferimentos_on_regione_id", using: :btree

  create_table "plots", force: true do |t|
    t.string   "nome"
    t.text     "localizzazione"
    t.text     "ev_descrizione"
    t.integer  "modulo2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plots", ["modulo2_id"], name: "index_plots_on_modulo2_id", using: :btree

  create_table "provinces", force: true do |t|
    t.string   "nome"
    t.integer  "regione_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "provinces", ["regione_id"], name: "index_provinces_on_regione_id", using: :btree

  create_table "rasters", force: true do |t|
    t.text     "descrizione"
    t.integer  "modulo2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rasters", ["modulo2_id"], name: "index_rasters_on_modulo2_id", using: :btree

  create_table "regiones", force: true do |t|
    t.string   "nome"
    t.integer  "nazione_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "regiones", ["nazione_id"], name: "index_regiones_on_nazione_id", using: :btree

  create_table "riferimenti_spazialis", force: true do |t|
    t.string   "punti"
    t.string   "coordinate"
    t.string   "ev_descrizione"
    t.text     "descrizione_globale"
    t.integer  "modulo2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "riferimenti_spazialis", ["modulo2_id"], name: "index_riferimenti_spazialis_on_modulo2_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.string   "keywords"
    t.string   "keywords1"
    t.string   "keywords2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "segnalazione_animalis", force: true do |t|
    t.string   "Titolo"
    t.string   "classe"
    t.string   "epiteto"
    t.string   "genere"
    t.string   "specie"
    t.string   "autore"
    t.boolean  "foto"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "segnalazione_animalis", ["user_id"], name: "index_segnalazione_animalis_on_user_id", using: :btree

  create_table "segnalazione_mineralis", force: true do |t|
    t.string   "titolo"
    t.text     "note"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "segnalazione_mineralis", ["user_id"], name: "index_segnalazione_mineralis_on_user_id", using: :btree

  create_table "segnalazione_vegetalis", force: true do |t|
    t.string   "Titolo"
    t.string   "famiglia_macro"
    t.string   "genere_macro"
    t.boolean  "foto"
    t.string   "famiglia_micro"
    t.string   "genere_micro"
    t.boolean  "microfoto"
    t.boolean  "campione"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "segnalazione_vegetalis", ["user_id"], name: "index_segnalazione_vegetalis_on_user_id", using: :btree

  create_table "sistemi_biologicis", force: true do |t|
    t.text     "tipologia"
    t.text     "riferimento"
    t.text     "componenti"
    t.text     "note"
    t.text     "referenze"
    t.text     "descrizione"
    t.integer  "modulo2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sistemi_biologicis", ["modulo2_id"], name: "index_sistemi_biologicis_on_modulo2_id", using: :btree

  create_table "static_pages", force: true do |t|
    t.integer  "modulo1_id"
    t.integer  "modulo2_id"
    t.integer  "segnalazione_animali_id"
    t.integer  "segnalazione_vegetali_id"
    t.integer  "segnalazione_minerali_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "static_pages", ["modulo1_id"], name: "index_static_pages_on_modulo1_id", using: :btree
  add_index "static_pages", ["modulo2_id"], name: "index_static_pages_on_modulo2_id", using: :btree
  add_index "static_pages", ["segnalazione_animali_id"], name: "index_static_pages_on_segnalazione_animali_id", using: :btree
  add_index "static_pages", ["segnalazione_minerali_id"], name: "index_static_pages_on_segnalazione_minerali_id", using: :btree
  add_index "static_pages", ["segnalazione_vegetali_id"], name: "index_static_pages_on_segnalazione_vegetali_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "nome"
    t.string   "cognome"
    t.string   "ruolo"
    t.string   "istituzione"
    t.string   "indirizzo"
    t.string   "email"
    t.string   "tel"
    t.string   "cell"
    t.integer  "modulo2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["modulo2_id"], name: "index_teams_on_modulo2_id", using: :btree

  create_table "transettis", force: true do |t|
    t.string   "nome"
    t.text     "localizzazione"
    t.text     "ev_descrizione"
    t.integer  "modulo2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transettis", ["modulo2_id"], name: "index_transettis_on_modulo2_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "role_id"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "variabilis", force: true do |t|
    t.string   "nome"
    t.string   "variabile_misurata"
    t.string   "variabile_derivata"
    t.string   "conteggio"
    t.string   "stima"
    t.string   "scala"
    t.string   "dimensione"
    t.text     "note"
    t.string   "variabile_chimico"
    t.string   "variabile_fisica"
    t.text     "tipo_attrezzatura"
    t.text     "errore_strumentale"
    t.text     "tipo_misurazione"
    t.text     "taratura"
    t.text     "metodologia_rilevamento"
    t.text     "metodologia_raccolta"
    t.text     "metodologia_trasporto"
    t.text     "metodologia_conservazione"
    t.text     "metodologia_laboratorio"
    t.text     "procedure"
    t.string   "aree"
    t.string   "comunita"
    t.string   "popolazioni"
    t.string   "individui"
    t.string   "numero_campionamento"
    t.string   "dimensione_campionamento"
    t.string   "disposizione_campionamento"
    t.string   "forma_campionamento"
    t.text     "note_campionamento"
    t.string   "numero_transetti"
    t.string   "forma_transetti"
    t.string   "inizio_transetti"
    t.string   "fine_transetti"
    t.string   "dislivello_transetti"
    t.string   "orientamento_transetti"
    t.text     "note_transetti"
    t.integer  "modulo2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "variabilis", ["modulo2_id"], name: "index_variabilis_on_modulo2_id", using: :btree

  create_table "vegetalisearches", force: true do |t|
    t.string   "keywords"
    t.string   "keywords1"
    t.string   "keywords2"
    t.string   "keywords3"
    t.string   "keywords4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
