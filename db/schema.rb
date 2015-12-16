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

ActiveRecord::Schema.define(:version => 20130107103209) do

  create_table "refinery_album_pages", :force => true do |t|
    t.integer "album_id"
    t.integer "page_id"
    t.string  "page_type", :default => "Refinery::Page"
  end

  add_index "refinery_album_pages", ["album_id"], :name => "index_refinery_album_pages_on_album_id"
  add_index "refinery_album_pages", ["page_id"], :name => "index_refinery_album_pages_on_page_id"

  create_table "refinery_banners", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "image_id"
    t.string   "url"
    t.boolean  "is_active"
    t.date     "start_date"
    t.date     "expiry_date"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "refinery_banners_pages", :id => false, :force => true do |t|
    t.integer "page_id"
    t.integer "banner_id"
  end

  add_index "refinery_banners_pages", ["banner_id"], :name => "index_refinery_banners_pages_on_banner_id"
  add_index "refinery_banners_pages", ["page_id"], :name => "index_refinery_banners_pages_on_page_id"

  create_table "refinery_contact_pages", :force => true do |t|
    t.integer "contact_id"
    t.integer "page_id"
    t.string  "page_type",    :default => "Refinery::Page"
    t.boolean "contact_info", :default => false
  end

  add_index "refinery_contact_pages", ["contact_id"], :name => "index_refinery_contact_pages_on_contact_id"
  add_index "refinery_contact_pages", ["page_id"], :name => "index_refinery_contact_pages_on_page_id"

  create_table "refinery_contacts", :force => true do |t|
    t.string   "title"
    t.string   "company"
    t.string   "street"
    t.string   "city"
    t.string   "zip_code"
    t.string   "province"
    t.string   "country"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "tel3"
    t.string   "fax"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "homepage"
  end

  create_table "refinery_contacts_mails", :force => true do |t|
    t.integer "contact_id"
    t.string  "mail"
  end

  add_index "refinery_contacts_mails", ["contact_id"], :name => "index_refinery_contacts_mails_on_contact_id"

  create_table "refinery_image_page_translations", :force => true do |t|
    t.integer  "refinery_image_page_id"
    t.string   "locale"
    t.text     "caption"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "refinery_image_page_translations", ["locale"], :name => "index_refinery_image_page_translations_on_locale"
  add_index "refinery_image_page_translations", ["refinery_image_page_id"], :name => "index_186c9a170a0ab319c675aa80880ce155d8f47244"

  create_table "refinery_image_pages", :force => true do |t|
    t.integer "image_id"
    t.integer "page_id"
    t.integer "position"
    t.text    "caption"
    t.string  "page_type", :default => "page"
  end

  add_index "refinery_image_pages", ["image_id"], :name => "index_refinery_image_pages_on_image_id"
  add_index "refinery_image_pages", ["page_id"], :name => "index_refinery_image_pages_on_page_id"

  create_table "refinery_images", :force => true do |t|
    t.string   "image_mime_type"
    t.string   "image_name"
    t.integer  "image_size"
    t.integer  "image_width"
    t.integer  "image_height"
    t.string   "image_uid"
    t.string   "image_ext"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "refinery_mailchimp_campaigns", :force => true do |t|
    t.string   "subject"
    t.string   "mailchimp_campaign_id"
    t.string   "mailchimp_list_id"
    t.string   "mailchimp_template_id"
    t.string   "from_email"
    t.string   "from_name"
    t.text     "body"
    t.datetime "sent_at"
    t.datetime "scheduled_at"
    t.boolean  "auto_tweet",            :default => false
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "refinery_mailchimp_campaigns", ["id"], :name => "index_refinery_mailchimp_campaigns_on_id"

  create_table "refinery_news_item_translations", :force => true do |t|
    t.integer  "refinery_news_item_id"
    t.string   "locale"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "source"
    t.text     "teaser"
  end

  add_index "refinery_news_item_translations", ["locale"], :name => "index_refinery_news_item_translations_on_locale"
  add_index "refinery_news_item_translations", ["refinery_news_item_id"], :name => "index_2fe5614a8b4e9a5c34c0f93f230e423e36d53bda"

  create_table "refinery_news_items", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "publish_date"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "image_id"
    t.datetime "expiration_date"
    t.string   "source"
    t.string   "slug"
    t.integer  "position"
    t.text     "teaser"
  end

  add_index "refinery_news_items", ["id"], :name => "index_refinery_news_items_on_id"

  create_table "refinery_page_part_translations", :force => true do |t|
    t.integer  "refinery_page_part_id"
    t.string   "locale"
    t.text     "body"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "refinery_page_part_translations", ["locale"], :name => "index_refinery_page_part_translations_on_locale"
  add_index "refinery_page_part_translations", ["refinery_page_part_id"], :name => "index_f9716c4215584edbca2557e32706a5ae084a15ef"

  create_table "refinery_page_parts", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "title"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_parts", ["id"], :name => "index_refinery_page_parts_on_id"
  add_index "refinery_page_parts", ["refinery_page_id"], :name => "index_refinery_page_parts_on_refinery_page_id"

  create_table "refinery_page_translations", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "locale"
    t.string   "title"
    t.string   "custom_slug"
    t.string   "menu_title"
    t.string   "slug"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_translations", ["locale"], :name => "index_refinery_page_translations_on_locale"
  add_index "refinery_page_translations", ["refinery_page_id"], :name => "index_d079468f88bff1c6ea81573a0d019ba8bf5c2902"

  create_table "refinery_pages", :force => true do |t|
    t.integer  "parent_id"
    t.string   "path"
    t.string   "slug"
    t.boolean  "show_in_menu",        :default => true
    t.string   "link_url"
    t.string   "menu_match"
    t.boolean  "deletable",           :default => true
    t.boolean  "draft",               :default => false
    t.boolean  "skip_to_first_child", :default => false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "view_template"
    t.string   "layout_template"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "refinery_pages", ["depth"], :name => "index_refinery_pages_on_depth"
  add_index "refinery_pages", ["id"], :name => "index_refinery_pages_on_id"
  add_index "refinery_pages", ["lft"], :name => "index_refinery_pages_on_lft"
  add_index "refinery_pages", ["parent_id"], :name => "index_refinery_pages_on_parent_id"
  add_index "refinery_pages", ["rgt"], :name => "index_refinery_pages_on_rgt"

  create_table "refinery_photo_gallery_albums", :force => true do |t|
    t.string   "title",                                       :null => false
    t.text     "description"
    t.string   "path"
    t.string   "address"
    t.decimal  "longitude",   :precision => 15, :scale => 10
    t.decimal  "latitude",    :precision => 15, :scale => 10
    t.text     "note"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  add_index "refinery_photo_gallery_albums", ["id"], :name => "index_refinery_photo_gallery_albums_on_id", :unique => true

  create_table "refinery_photo_gallery_collection_albums", :force => true do |t|
    t.integer "collection_id"
    t.integer "album_id"
  end

  add_index "refinery_photo_gallery_collection_albums", ["album_id"], :name => "index_refinery_photo_gallery_collection_albums_on_album_id"
  add_index "refinery_photo_gallery_collection_albums", ["collection_id"], :name => "index_refinery_photo_gallery_collection_albums_on_collection_id"

  create_table "refinery_photo_gallery_collections", :force => true do |t|
    t.string   "title",       :null => false
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "refinery_photo_gallery_collections", ["id"], :name => "index_refinery_photo_gallery_collections_on_id", :unique => true

  create_table "refinery_photo_gallery_photos", :force => true do |t|
    t.string   "title",                                       :null => false
    t.text     "description"
    t.string   "path"
    t.decimal  "longitude",   :precision => 15, :scale => 10
    t.decimal  "latitude",    :precision => 15, :scale => 10
    t.string   "file"
    t.integer  "album_id"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  add_index "refinery_photo_gallery_photos", ["album_id"], :name => "index_refinery_photo_gallery_photos_on_album_id"
  add_index "refinery_photo_gallery_photos", ["id"], :name => "index_refinery_photo_gallery_photos_on_id", :unique => true

  create_table "refinery_race_registrations_categories", :force => true do |t|
    t.string   "title"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_race_registrations_group_categories", :force => true do |t|
    t.integer "group_id"
    t.integer "category_id"
  end

  add_index "refinery_race_registrations_group_categories", ["category_id"], :name => "refinery_race_registrations_group_categories_on_category_id"
  add_index "refinery_race_registrations_group_categories", ["group_id"], :name => "refinery_race_registrations_group_categories_on_group_id"

  create_table "refinery_race_registrations_groups", :force => true do |t|
    t.string   "title"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_race_registrations_people", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "country"
    t.date     "birth_date"
    t.string   "email"
    t.string   "club"
    t.string   "city"
    t.text     "notice"
    t.integer  "position"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "registration_id"
    t.integer  "category_id"
  end

  add_index "refinery_race_registrations_people", ["category_id"], :name => "index_refinery_race_registrations_people_on_category_id"
  add_index "refinery_race_registrations_people", ["registration_id"], :name => "index_refinery_race_registrations_people_on_registration_id"

  create_table "refinery_race_registrations_registrations", :force => true do |t|
    t.string   "title"
    t.string   "locality"
    t.date     "race_date"
    t.boolean  "is_active"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "group_id"
  end

  add_index "refinery_race_registrations_registrations", ["group_id"], :name => "index_refinery_race_registrations_registrations_on_group_id"

  create_table "refinery_resources", :force => true do |t|
    t.string   "file_mime_type"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_uid"
    t.string   "file_ext"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "refinery_roles", :force => true do |t|
    t.string "title"
  end

  create_table "refinery_roles_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "refinery_roles_users", ["role_id", "user_id"], :name => "index_refinery_roles_users_on_role_id_and_user_id"
  add_index "refinery_roles_users", ["user_id", "role_id"], :name => "index_refinery_roles_users_on_user_id_and_role_id"

  create_table "refinery_settings", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.boolean  "destroyable",     :default => true
    t.string   "scoping"
    t.boolean  "restricted",      :default => false
    t.string   "form_value_type"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "refinery_settings", ["name"], :name => "index_refinery_settings_on_name"

  create_table "refinery_snippet_translations", :force => true do |t|
    t.integer  "refinery_snippet_id"
    t.string   "locale"
    t.text     "body"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "refinery_snippet_translations", ["locale"], :name => "index_refinery_snippet_translations_on_locale"
  add_index "refinery_snippet_translations", ["refinery_snippet_id"], :name => "index_0c8848b012d6acb4eb3f23095b4e6a5becb2b6b2"

  create_table "refinery_snippets", :force => true do |t|
    t.string   "title",      :limit => 36,                   :null => false
    t.text     "body"
    t.integer  "position",                 :default => 0,    :null => false
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.boolean  "deletable",                :default => true, :null => false
  end

  create_table "refinery_user_plugins", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "refinery_user_plugins", ["name"], :name => "index_refinery_user_plugins_on_name"
  add_index "refinery_user_plugins", ["user_id", "name"], :name => "index_refinery_user_plugins_on_user_id_and_name", :unique => true

  create_table "refinery_users", :force => true do |t|
    t.string   "username",               :null => false
    t.string   "email",                  :null => false
    t.string   "encrypted_password",     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.datetime "remember_created_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "refinery_users", ["id"], :name => "index_refinery_users_on_id"

  create_table "refinery_video_files", :force => true do |t|
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_ext"
    t.string   "file_uid"
    t.string   "file_mime_type"
    t.integer  "video_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "external_url"
    t.boolean  "use_external"
  end

  create_table "refinery_videos", :force => true do |t|
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "config"
    t.string   "title"
    t.integer  "poster_id"
    t.boolean  "use_shared"
    t.text     "embed_tag"
  end

  create_table "seo_meta", :force => true do |t|
    t.integer  "seo_meta_id"
    t.string   "seo_meta_type"
    t.string   "browser_title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "seo_meta", ["id"], :name => "index_seo_meta_on_id"
  add_index "seo_meta", ["seo_meta_id", "seo_meta_type"], :name => "index_seo_meta_on_seo_meta_id_and_seo_meta_type"

  create_table "snippets_page_parts", :force => true do |t|
    t.integer  "snippet_id",                      :null => false
    t.integer  "page_part_id",                    :null => false
    t.integer  "position",     :default => 0,     :null => false
    t.boolean  "before_body",  :default => false, :null => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "snippets_page_parts", ["page_part_id"], :name => "index_snippets_page_parts_on_page_part_id"
  add_index "snippets_page_parts", ["snippet_id"], :name => "index_snippets_page_parts_on_snippet_id"

end
