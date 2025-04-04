# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 20_241_121_185_106) do
  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.integer 'record_id', null: false
    t.integer 'blob_id', null: false
    t.datetime 'created_at', precision: nil, null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness',
                                                    unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.integer 'byte_size', null: false
    t.string 'checksum'
    t.datetime 'created_at', precision: nil, null: false
    t.string 'service_name', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'active_storage_variant_records', force: :cascade do |t|
    t.integer 'blob_id', null: false
    t.string 'variation_digest', null: false
    t.index %w[blob_id variation_digest], name: 'index_active_storage_variant_records_uniqueness', unique: true
  end

  create_table 'categories', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: nil, null: false
    t.datetime 'updated_at', precision: nil, null: false
  end

  create_table 'plays', force: :cascade do |t|
    t.string 'title'
    t.text 'description'
    t.string 'director'
    t.datetime 'created_at', precision: nil, null: false
    t.datetime 'updated_at', precision: nil, null: false
    t.integer 'user_id'
    t.integer 'category_id'
    t.index ['category_id'], name: 'index_plays_on_category_id'
    t.index ['user_id'], name: 'index_plays_on_user_id'
  end

  create_table 'reviews', force: :cascade do |t|
    t.integer 'rating'
    t.text 'comment'
    t.datetime 'created_at', precision: nil, null: false
    t.datetime 'updated_at', precision: nil, null: false
    t.integer 'user_id'
    t.integer 'play_id'
    t.index ['play_id'], name: 'index_reviews_on_play_id'
    t.index ['user_id'], name: 'index_reviews_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at', precision: nil
    t.datetime 'remember_created_at', precision: nil
    t.datetime 'created_at', precision: nil, null: false
    t.datetime 'updated_at', precision: nil, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'active_storage_variant_records', 'active_storage_blobs', column: 'blob_id'
end
