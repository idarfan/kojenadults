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

ActiveRecord::Schema.define(:version => 20120411123915) do

  create_table "adults_graduateds", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adults_howyouknowus", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adults_localexameds", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adults_session_descriptions", :force => true do |t|
    t.string   "classname"
    t.string   "class_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adults_whatexameds", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adults_whylearns", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "been2others", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boards", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fortest", :force => true do |t|
    t.string "reason_desc", :null => false
  end

  create_table "frequentmags", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graduateds", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "howcanimproves", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "howuknowus", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incomelevels", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kojenadult_adults_graduatedships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "kojenadult_id"
    t.integer  "adults_graduated_id"
  end

  add_index "kojenadult_adults_graduatedships", ["kojenadult_id", "adults_graduated_id"], :name => "kojenadult_id and adults_graduated_id", :unique => true

  create_table "kojenadult_adults_howyouknowuships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "kojenadult_id"
    t.integer  "adults_howyouknowu_id"
  end

  add_index "kojenadult_adults_howyouknowuships", ["kojenadult_id", "adults_howyouknowu_id"], :name => "kojenadult_id and adults_howyouknowu_id", :unique => true

  create_table "kojenadult_adults_localexamedships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "kojenadult_id"
    t.integer  "adults_localexamed_id"
  end

  add_index "kojenadult_adults_localexamedships", ["kojenadult_id", "adults_localexamed_id"], :name => "kojenadult_id and adults_localexamed_id", :unique => true

  create_table "kojenadult_adults_whatexamedships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "kojenadult_id"
    t.integer  "adults_whatexamed_id"
  end

  add_index "kojenadult_adults_whatexamedships", ["kojenadult_id", "adults_whatexamed_id"], :name => "kojenadult_id and adults_whatexamed_id", :unique => true

  create_table "kojenadult_adults_whylearnships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "kojenadult_id"
    t.integer  "adults_whylearn_id"
  end

  add_index "kojenadult_adults_whylearnships", ["kojenadult_id", "adults_whylearn_id"], :name => "kojenadult_id and adults_whylearn_id", :unique => true

  create_table "kojenadult_classes", :force => true do |t|
    t.string   "level"
    t.date     "start_period"
    t.decimal  "test_fee",     :precision => 10, :scale => 0
    t.date     "end_period"
    t.decimal  "tuition",      :precision => 10, :scale => 0
    t.string   "repeat"
    t.decimal  "withdraw",     :precision => 10, :scale => 0
    t.string   "postpone"
    t.decimal  "scholarship",  :precision => 10, :scale => 0
    t.string   "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "community_id"
    t.integer  "student_id"
  end

  create_table "kojenadult_session_descriptionships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "kojenadult_id"
    t.integer  "adults_session_description_id"
  end

  add_index "kojenadult_session_descriptionships", ["kojenadult_id", "adults_session_description_id"], :name => "kojenadult_id and adults_session_description_id", :unique => true

  create_table "kojenadults", :force => true do |t|
    t.string   "cname"
    t.string   "ename"
    t.string   "community_id"
    t.integer  "student_id"
    t.date     "birthday"
    t.string   "gender"
    t.string   "email"
    t.string   "address"
    t.string   "telephone"
    t.string   "mobile_phone"
    t.string   "parents_phone"
    t.string   "jobs"
    t.string   "company"
    t.string   "company_address"
    t.string   "company_phone"
    t.string   "graduated_other"
    t.string   "media_other"
    t.string   "howyouknowus_other"
    t.string   "whylearn_other"
    t.string   "whatexamed_other"
    t.string   "contact"
    t.text     "signature"
    t.text     "notice_other"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "main_area",           :limit => 1
    t.integer  "sub_area",            :limit => 1
    t.string   "road_name"
    t.string   "keyin"
    t.string   "session"
    t.date     "classtime"
    t.string   "session_description"
    t.string   "teacher"
    t.string   "classnumber"
  end

  create_table "kojenadults_classe_ships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "kojenadult_id"
    t.integer  "kojenadult_classe_id"
  end

  add_index "kojenadults_classe_ships", ["kojenadult_id", "kojenadult_classe_id"], :name => "kojenadult_id and kojenadult_classe_id", :unique => true

  create_table "learmotivations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "learnmotives", :force => true do |t|
    t.integer  "fk_student_id"
    t.integer  "learn_id",                    :null => false
    t.string   "learn_desc",    :limit => 64, :null => false
    t.boolean  "learn_states"
    t.text     "ohter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.string   "name",        :limit => 45,  :null => false
    t.string   "title",       :limit => 45,  :null => false
    t.string   "website_url", :limit => 45,  :null => false
    t.text     "body"
    t.string   "replay",      :limit => 200
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mostimportchoices", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mostneeds", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notices", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.string   "shipping_name"
    t.string   "billing_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pma_tracking", :id => false, :force => true do |t|
    t.string   "db_name",         :limit => 64,                        :null => false
    t.string   "table_name",      :limit => 64,                        :null => false
    t.integer  "version",                                              :null => false
    t.datetime "date_created",                                         :null => false
    t.datetime "date_updated",                                         :null => false
    t.text     "schema_snapshot",                                      :null => false
    t.text     "schema_sql"
    t.text     "data_sql",        :limit => 2147483647
    t.string   "tracking",        :limit => 0
    t.integer  "tracking_active",                       :default => 1, :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "board_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "pname"
    t.string   "pinfo"
    t.integer  "pcount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sales_name"
  end

  create_table "regeds", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stafflogins", :force => true do |t|
    t.string   "name",                                    :null => false
    t.string   "password",   :limit => 64,                :null => false
    t.integer  "level",      :limit => 1,  :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stafflogins", ["name"], :name => "stafflogins_name", :unique => true

  create_table "staffofmine1s", :force => true do |t|
    t.string   "name",       :limit => 45, :null => false
    t.string   "department", :limit => 45, :null => false
    t.string   "phone",      :limit => 45, :null => false
    t.string   "alias"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",      :limit => 45
    t.string   "gender",     :limit => 45
  end

  create_table "staffofmines", :force => true do |t|
    t.string   "name",       :limit => 45, :null => false
    t.string   "department", :limit => 45, :null => false
    t.string   "phone",      :limit => 45, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_been2otherships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "been2other_id"
  end

  add_index "student_been2otherships", ["student_id", "been2other_id"], :name => "student_id_been2other_id", :unique => true

  create_table "student_frequentmagships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "frequentmag_id"
  end

  add_index "student_frequentmagships", ["frequentmag_id"], :name => "frequentmag_id"
  add_index "student_frequentmagships", ["student_id"], :name => "student_id"

  create_table "student_graduatedships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "graduated_id"
  end

  add_index "student_graduatedships", ["student_id", "graduated_id"], :name => "student_id_graduated_id", :unique => true

  create_table "student_howuknowusships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "howuknowu_id"
  end

  add_index "student_howuknowusships", ["howuknowu_id"], :name => "howuknowu_id"
  add_index "student_howuknowusships", ["student_id"], :name => "student_id"

  create_table "student_improveships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "howcanimprove_id"
  end

  add_index "student_improveships", ["student_id", "howcanimprove_id"], :name => "studenti_id_howcanimprove_id", :unique => true

  create_table "student_incomelevelships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "incomelevel_id"
  end

  add_index "student_incomelevelships", ["student_id", "incomelevel_id"], :name => "student_id_incomelevel_id", :unique => true

  create_table "student_mostimportchoiceships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "mostimportchoice_id"
  end

  add_index "student_mostimportchoiceships", ["mostimportchoice_id"], :name => "mostimportchoice_id"
  add_index "student_mostimportchoiceships", ["student_id"], :name => "student_id"

  create_table "student_mostneedships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "mostneed_id"
  end

  add_index "student_mostneedships", ["student_id", "mostneed_id"], :name => "student_id_mostneed_id", :unique => true

  create_table "student_noticeships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "notice_id"
  end

  add_index "student_noticeships", ["student_id", "notice_id"], :name => "student_id_notice_id", :unique => true

  create_table "student_regedships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "reged_id"
  end

  add_index "student_regedships", ["student_id", "reged_id"], :name => "student_id_reged_id", :unique => true

  create_table "student_weeklyusageships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "weeklyusage_id"
  end

  add_index "student_weeklyusageships", ["student_id"], :name => "student_id"
  add_index "student_weeklyusageships", ["weeklyusage_id"], :name => "weeklyusage_id"

  create_table "student_whylearnships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "whylearn_id"
  end

  add_index "student_whylearnships", ["student_id"], :name => "student_id"
  add_index "student_whylearnships", ["whylearn_id"], :name => "whylearn_id"

  create_table "students", :force => true do |t|
    t.string   "student_id"
    t.string   "cname",                                               :null => false
    t.string   "ename"
    t.date     "birthday"
    t.string   "gender"
    t.string   "email"
    t.string   "address"
    t.string   "telephone"
    t.string   "mobile_phone"
    t.string   "sales"
    t.string   "introduce"
    t.string   "whylearn_other"
    t.string   "mostneed_other"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "frequentmag_other"
    t.string   "mostimportchoice_other"
    t.string   "howcanimprove_other"
    t.string   "howuknowus_other"
    t.string   "been2other_other"
    t.text     "notice_other"
    t.date     "keytime"
    t.integer  "main_area",              :limit => 1
    t.integer  "sub_area",               :limit => 1
    t.string   "road_name",                           :default => ""
    t.string   "graduated_other"
    t.integer  "reged"
  end

  create_table "tb_log", :primary_key => "pk_log", :force => true do |t|
    t.integer "fk_user_id",               :null => false
    t.string  "name",       :limit => 32
    t.string  "action",     :limit => 32
  end

  add_index "tb_log", ["fk_user_id"], :name => "idx_fk_user_id"

  create_table "tb_student", :primary_key => "pk_student", :force => true do |t|
    t.integer "fk_user_id",               :null => false
    t.string  "name",       :limit => 32
    t.string  "action",     :limit => 32
  end

  add_index "tb_student", ["fk_user_id"], :name => "idx_fk_user_id"

  create_table "tb_user", :primary_key => "pk_user", :force => true do |t|
    t.integer "user_id",               :null => false
    t.string  "name",    :limit => 32, :null => false
  end

  add_index "tb_user", ["user_id"], :name => "idx_user_id", :unique => true

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "level"
  end

  create_table "weeklyusages", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "whylearns", :force => true do |t|
    t.string   "reason_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
