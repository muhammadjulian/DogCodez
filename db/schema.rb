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

ActiveRecord::Schema.define(version: 2018_11_14_115142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "identities", force: :cascade do |t|
    t.text "username"
    t.text "password"
    t.text "email"
    t.integer "authority", default: 0
    t.string "dispname"
    t.string "reg_date", default: "2018-11-13"
    t.integer "ev", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kelas_kueqs", force: :cascade do |t|
    t.string "judul"
    t.text "isi"
    t.text "ringkasaan"
    t.integer "nomor"
    t.text "mm"
    t.string "jenis_bahasa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "penggunas", force: :cascade do |t|
    t.string "dispname"
    t.string "username"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repositories", force: :cascade do |t|
    t.text "code"
    t.integer "pemilik"
    t.integer "akses"
    t.string "katagori"
    t.string "namafile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ruang_kelas", force: :cascade do |t|
    t.integer "nomor"
    t.text "judul"
    t.text "ringkasaan"
    t.string "mm_url"
    t.text "contoh_kode"
    t.text "jenis_bahasa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
