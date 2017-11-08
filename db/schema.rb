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

ActiveRecord::Schema.define(version: 20171108184939) do

  create_table "addresses", force: :cascade do |t|
    t.string "street_address"
    t.string "zip_code"
    t.integer "city_id"
    t.string "addressable_type"
    t.integer "addressable_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "country_id"
    t.integer "state_id"
    t.integer "kind", default: 0
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
    t.index ["city_id"], name: "index_addresses_on_city_id"
    t.index ["deleted_at"], name: "index_addresses_on_deleted_at"
    t.index ["kind"], name: "index_addresses_on_kind"
    t.index ["zip_code"], name: "index_addresses_on_zip_code"
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.string "bank_name"
    t.string "bank_branch_number"
    t.string "account_number"
    t.integer "person_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_number"], name: "index_bank_accounts_on_account_number"
    t.index ["deleted_at"], name: "index_bank_accounts_on_deleted_at"
    t.index ["person_id"], name: "index_bank_accounts_on_person_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "state_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "country_id"
    t.index ["country_id"], name: "index_cities_on_country_id"
    t.index ["deleted_at"], name: "index_cities_on_deleted_at"
    t.index ["name"], name: "index_cities_on_name"
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_countries_on_deleted_at"
    t.index ["name"], name: "index_countries_on_name"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "product_id"
    t.integer "course_load"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_courses_on_product_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string "body"
    t.string "emailable_type"
    t.integer "emailable_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "kind", default: 0
    t.boolean "main", default: false
    t.index ["body"], name: "index_emails_on_body"
    t.index ["deleted_at"], name: "index_emails_on_deleted_at"
    t.index ["emailable_type", "emailable_id"], name: "index_emails_on_emailable_type_and_emailable_id"
    t.index ["kind"], name: "index_emails_on_kind"
  end

  create_table "grades", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.integer "vacancy"
    t.integer "course_load"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.index ["category"], name: "index_grades_on_category"
    t.index ["name"], name: "index_grades_on_name"
    t.index ["product_id"], name: "index_grades_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "subtotal"
    t.integer "tax"
    t.integer "shipping"
    t.integer "discount"
    t.integer "total"
    t.integer "user_id"
    t.integer "person_id"
    t.boolean "cart"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart"], name: "index_orders_on_cart"
    t.index ["deleted_at"], name: "index_orders_on_deleted_at"
    t.index ["discount"], name: "index_orders_on_discount"
    t.index ["person_id"], name: "index_orders_on_person_id"
    t.index ["shipping"], name: "index_orders_on_shipping"
    t.index ["subtotal"], name: "index_orders_on_subtotal"
    t.index ["tax"], name: "index_orders_on_tax"
    t.index ["total"], name: "index_orders_on_total"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "type", null: false
    t.string "name"
    t.date "birthday"
    t.integer "gender", default: 0
    t.integer "marital_status", default: 0
    t.string "cpf"
    t.string "rg"
    t.string "company_name"
    t.string "cnpj"
    t.string "inscricao_estadual"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cnpj"], name: "index_people_on_cnpj"
    t.index ["cpf"], name: "index_people_on_cpf"
    t.index ["deleted_at"], name: "index_people_on_deleted_at"
    t.index ["type"], name: "index_people_on_type"
  end

  create_table "phones", force: :cascade do |t|
    t.string "number"
    t.string "phonable_type"
    t.integer "phonable_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "kind", default: 0
    t.boolean "main", default: false
    t.text "instant_message"
    t.index ["deleted_at"], name: "index_phones_on_deleted_at"
    t.index ["kind"], name: "index_phones_on_kind"
    t.index ["number"], name: "index_phones_on_number"
    t.index ["phonable_type", "phonable_id"], name: "index_phones_on_phonable_type_and_phonable_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.integer "person_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_places_on_deleted_at"
    t.index ["name"], name: "index_places_on_name"
    t.index ["person_id"], name: "index_places_on_person_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "type", null: false
    t.integer "stock"
    t.decimal "base_value"
    t.integer "category", default: 0
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active"
    t.index ["active"], name: "index_products_on_active"
    t.index ["category"], name: "index_products_on_category"
    t.index ["deleted_at"], name: "index_products_on_deleted_at"
    t.index ["name"], name: "index_products_on_name"
    t.index ["type"], name: "index_products_on_type"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
    t.index ["deleted_at"], name: "index_states_on_deleted_at"
    t.index ["name"], name: "index_states_on_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
