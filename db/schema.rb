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

ActiveRecord::Schema.define(version: 20131228025916) do

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "estimates", force: true do |t|
    t.integer  "response_id"
    t.integer  "facebook_male_friends"
    t.integer  "facebook_gay_friends"
    t.string   "accuracy"
    t.integer  "right_percentage"
    t.integer  "facebook_recruitable_friends"
    t.string   "accuracy_recruitable"
    t.integer  "right_percentage_recruitable"
    t.string   "how_recruited"
    t.string   "email_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facebook_friendships", force: true do |t|
    t.integer  "lower_facebook_user_id"
    t.integer  "higher_facebook_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facebook_friendships", ["higher_facebook_user_id"], name: "index_facebook_friendships_on_higher_facebook_user_id"
  add_index "facebook_friendships", ["lower_facebook_user_id"], name: "index_facebook_friendships_on_lower_facebook_user_id"

  create_table "facebook_responses", force: true do |t|
    t.integer  "facebook_user_id"
    t.integer  "recruit_id"
    t.string   "recruitee_coupon"
    t.string   "recruiter_coupon"
    t.boolean  "eighteen_or_older"
    t.string   "nationality"
    t.string   "email_address"
    t.integer  "facebook_male_friends"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facebook_users", force: true do |t|
    t.integer  "so_facebook_user_id"
    t.integer  "facebook_account_number"
    t.string   "hashed_facebook_account_number"
    t.string   "gender"
    t.string   "interested_in"
    t.string   "name"
    t.string   "relationship_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facebook_users", ["facebook_account_number"], name: "index_facebook_users_on_facebook_account_number"
  add_index "facebook_users", ["gender"], name: "index_facebook_users_on_gender"
  add_index "facebook_users", ["hashed_facebook_account_number"], name: "index_facebook_users_on_hashed_facebook_account_number"
  add_index "facebook_users", ["interested_in"], name: "index_facebook_users_on_interested_in"
  add_index "facebook_users", ["relationship_status"], name: "index_facebook_users_on_relationship_status"
  add_index "facebook_users", ["so_facebook_user_id"], name: "index_facebook_users_on_so_facebook_user_id"

  create_table "redssocs_survey_consents", force: true do |t|
    t.boolean  "eighteen_or_older"
    t.boolean  "read_and_understand"
    t.boolean  "dont_meet_all_criteria"
    t.string   "nationality"
    t.boolean  "facebook"
    t.string   "email_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "responses", force: true do |t|
    t.string   "facebook_response_id"
    t.string   "recruitee_coupon"
    t.string   "recruiter_coupon"
    t.string   "email_address"
    t.integer  "age"
    t.string   "birth_sex"
    t.string   "bigFive_introverted"
    t.string   "bigFive_trust"
    t.string   "bigFive_lazy"
    t.string   "bigFive_cope"
    t.string   "bigFive_art"
    t.string   "bigFive_extraverted"
    t.string   "bigFive_flaws"
    t.string   "bigFive_tasks"
    t.string   "bigFive_tense"
    t.string   "bigFive_active"
    t.string   "martial"
    t.integer  "num_siblings"
    t.string   "num_children"
    t.string   "num_children_intouch"
    t.string   "parents"
    t.string   "parents_touch"
    t.string   "parents_partner"
    t.string   "parents_partner_touch"
    t.integer  "other_relatives"
    t.integer  "other_relatives_touch"
    t.integer  "close_friends"
    t.integer  "close_friends_touch"
    t.string   "religious"
    t.integer  "religious_members"
    t.string   "classes"
    t.integer  "talk_students_teachers"
    t.string   "employed"
    t.integer  "talk_work"
    t.integer  "visit_neighbors"
    t.string   "volunteer"
    t.integer  "num_volunteer"
    t.string   "social_group"
    t.string   "happy"
    t.string   "life_satisfaction_ideal"
    t.string   "life_satisfaction_conditions"
    t.string   "life_satisfaction_satisfied"
    t.string   "life_satisfaction_things"
    t.string   "life_satisfaction_change"
    t.string   "happiness_rating"
    t.string   "communal1_item1"
    t.string   "communal1_item2"
    t.string   "communal1_item3"
    t.string   "communal1_item4"
    t.string   "communal1_item5"
    t.string   "communal1_item6"
    t.string   "communal2_item1"
    t.string   "communal2_item2"
    t.string   "communal2_item3"
    t.string   "communal2_item4"
    t.string   "communal2_item5"
    t.string   "communal2_item6"
    t.string   "burden_item1"
    t.string   "burden_item2"
    t.string   "burden_item3"
    t.string   "burden_item4"
    t.string   "burden_item5"
    t.string   "burden_item6"
    t.string   "belong_item1"
    t.string   "belong_item2"
    t.string   "belong_item3"
    t.string   "belong_item4"
    t.string   "belong_item5"
    t.string   "belong_item6"
    t.string   "belong_item7"
    t.string   "belong_item8"
    t.string   "belong_item9"
    t.string   "belong_item10"
    t.string   "belong_item11"
    t.string   "belong_item12"
    t.string   "belong_item13"
    t.string   "belong_item14"
    t.string   "belong_item15"
    t.string   "belong_item16"
    t.string   "belong_item17"
    t.string   "belong_item18"
    t.string   "rahe_item1"
    t.string   "rahe_item2"
    t.string   "rahe_item3"
    t.string   "rahe_item4"
    t.string   "rahe_item5"
    t.string   "rahe_item6"
    t.string   "rahe_item7"
    t.string   "rahe_item8"
    t.string   "rahe_item9"
    t.string   "rahe_item10"
    t.string   "rahe_item11"
    t.string   "rahe_item12"
    t.string   "rahe_item13"
    t.string   "rahe_item14"
    t.string   "rahe_item15"
    t.string   "rahe_item16"
    t.string   "rahe_item17"
    t.string   "rahe_item18"
    t.string   "rahe_item19"
    t.string   "rahe_item20"
    t.string   "rahe_item21"
    t.string   "rahe_item22"
    t.string   "rahe_item23"
    t.string   "rahe_item24"
    t.string   "rahe_item25"
    t.string   "rahe_item26"
    t.string   "rahe_item27"
    t.string   "rahe_item28"
    t.string   "rahe_item29"
    t.string   "rahe_item30"
    t.string   "rahe_item31"
    t.string   "rahe_item32"
    t.string   "rahe_item33"
    t.string   "rahe_item34"
    t.string   "rahe_item35"
    t.string   "rahe_item36"
    t.string   "rahe_item37"
    t.string   "rahe_item38"
    t.string   "rahe_item39"
    t.string   "rahe_item40"
    t.string   "rahe_item41"
    t.string   "rahe_item42"
    t.string   "rahe_item43"
    t.string   "rahe_item44"
    t.string   "rahe_item45"
    t.string   "rahe_item46"
    t.string   "rahe_item47"
    t.string   "rahe_item48"
    t.string   "rahe_item49"
    t.string   "rahe_item50"
    t.string   "rahe_item51"
    t.string   "rahe_item52"
    t.string   "rahe_item53"
    t.string   "rahe_item54"
    t.string   "rahe_item55"
    t.string   "rahe_other"
    t.string   "cope_b"
    t.string   "cope_b_other"
    t.string   "cope_c_item1"
    t.string   "cope_c_item2"
    t.string   "cope_c_item3"
    t.string   "cope_c_item4"
    t.string   "cope_c_item5"
    t.string   "cope_c_item6"
    t.string   "cope_c_item7"
    t.string   "cope_c_item8"
    t.string   "cope_c_item9"
    t.string   "cope_c_item10"
    t.string   "cope_c_item11"
    t.string   "cope_c_item12"
    t.string   "cope_c_item13"
    t.string   "cope_c_item14"
    t.string   "cope_c_item15"
    t.string   "cope_c_item16"
    t.string   "cope_c_item17"
    t.string   "cope_c_item18"
    t.string   "cope_c_item19"
    t.string   "cope_c_item20"
    t.string   "cope_c_item21"
    t.string   "cope_c_item22"
    t.string   "cope_c_item23"
    t.string   "cope_c_item24"
    t.string   "cope_c_item25"
    t.string   "cope_c_item26"
    t.string   "cope_c_item27"
    t.string   "cope_c_item28"
    t.string   "cope_c_item29"
    t.string   "cope_c_item30"
    t.string   "cope_c_item31"
    t.string   "cope_c_item32"
    t.string   "cope_c_item33"
    t.string   "cope_problems"
    t.string   "self_construal_item1"
    t.string   "self_construal_item2"
    t.string   "self_construal_item3"
    t.string   "self_construal_item4"
    t.string   "self_construal_item5"
    t.string   "self_construal_item6"
    t.string   "self_construal_item7"
    t.string   "self_construal_item8"
    t.string   "self_construal_item9"
    t.string   "self_construal_item10"
    t.string   "self_construal_item11"
    t.string   "self_construal_item12"
    t.string   "self_construal_item13"
    t.string   "self_construal_item14"
    t.string   "self_construal_item15"
    t.string   "self_construal_item16"
    t.string   "self_construal_item17"
    t.string   "self_construal_item18"
    t.string   "individualism_item1"
    t.string   "individualism_item2"
    t.string   "individualism_item3"
    t.string   "individualism_item4"
    t.string   "individualism_item5"
    t.string   "individualism_item6"
    t.string   "individualism_item7"
    t.string   "individualism_item8"
    t.string   "individualism_item9"
    t.string   "individualism_item10"
    t.string   "individualism_item11"
    t.string   "individualism_item12"
    t.string   "individualism_item13"
    t.string   "individualism_item14"
    t.string   "individualism_item15"
    t.string   "individualism_item16"
    t.string   "individualism_item17"
    t.string   "individualism_item18"
    t.string   "individualism_item19"
    t.string   "depression_item1"
    t.string   "depression_item2"
    t.string   "depression_item3"
    t.string   "depression_item4"
    t.string   "depression_item5"
    t.string   "depression_item6"
    t.string   "depression_item7"
    t.string   "depression_item8"
    t.string   "depression_item9"
    t.string   "depression_item10"
    t.string   "depression_item11"
    t.string   "depression_item12"
    t.string   "depression_item13"
    t.string   "depression_item14"
    t.string   "depression_item15"
    t.string   "depression_item16"
    t.string   "depression_item17"
    t.string   "depression_item18"
    t.string   "depression_item19"
    t.string   "depression_item20"
    t.string   "suicide_a"
    t.string   "suicide_b"
    t.string   "suicide_c"
    t.string   "suicide_d"
    t.string   "function_a"
    t.string   "function_b"
    t.string   "function_c"
    t.string   "trauma_a"
    t.string   "trauma_b"
    t.string   "trauma_c"
    t.string   "religious_dominations"
    t.string   "religious_dominations_other"
    t.string   "religious_a_item1"
    t.string   "religious_a_item2"
    t.string   "religious_a_item3"
    t.string   "how_religious"
    t.string   "religious_b"
    t.string   "religious_c"
    t.integer  "demographics_a"
    t.string   "demographics_b"
    t.string   "demographics_c"
    t.string   "demographics_d"
    t.string   "demographics_e"
    t.integer  "demographics_f"
    t.integer  "demographics_g"
    t.string   "demographics_i"
    t.string   "demographics_j"
    t.string   "demographics_k"
    t.string   "demographics_l"
    t.string   "demographics_m"
    t.string   "demographics_n"
    t.string   "demographics_o"
    t.string   "demographics_p"
    t.string   "demographics_p_other"
    t.string   "demographics_r"
    t.string   "demographics_r_other"
    t.string   "demographics_s"
    t.string   "groupa1"
    t.string   "groupa2"
    t.string   "groupb1"
    t.string   "groupb2"
    t.boolean  "live_with1"
    t.boolean  "live_with2"
    t.boolean  "live_with3"
    t.boolean  "live_with4"
    t.boolean  "live_with5"
    t.boolean  "live_with6"
    t.boolean  "live_with7"
    t.boolean  "live_with8"
    t.boolean  "live_with9"
    t.boolean  "com1"
    t.boolean  "com2"
    t.boolean  "com3"
    t.boolean  "com4"
    t.boolean  "family1"
    t.boolean  "family2"
    t.boolean  "family3"
    t.boolean  "family4"
    t.boolean  "family5"
    t.boolean  "family6"
    t.string   "father_a"
    t.string   "father_b"
    t.string   "father_c"
    t.string   "father_d"
    t.string   "father_e"
    t.string   "father_f"
    t.string   "father_g"
    t.string   "mother_a"
    t.string   "mother_b"
    t.string   "mother_c"
    t.string   "mother_d"
    t.string   "mother_e"
    t.string   "mother_f"
    t.string   "mother_g"
    t.string   "children_a"
    t.string   "children_b"
    t.string   "children_c"
    t.string   "children_d"
    t.string   "children_e"
    t.string   "children_f"
    t.string   "children_g"
    t.string   "sibling_a"
    t.string   "sibling_b"
    t.string   "sibling_c"
    t.string   "sibling_d"
    t.string   "sibling_e"
    t.string   "sibling_f"
    t.string   "sibling_g"
    t.string   "exfamily_a"
    t.string   "exfamily_b"
    t.string   "exfamily_c"
    t.string   "exfamily_d"
    t.string   "exfamily_e"
    t.string   "exfamily_f"
    t.string   "exfamily_g"
    t.string   "spouse_a"
    t.string   "spouse_b"
    t.string   "spouse_c"
    t.string   "spouse_d"
    t.string   "spouse_e"
    t.string   "spouse_f"
    t.string   "spouse_g"
    t.string   "friends_a"
    t.string   "friends_b"
    t.string   "friends_c"
    t.string   "friends_d"
    t.string   "friends_e"
    t.string   "friends_f"
    t.string   "friends_g"
    t.string   "net_a"
    t.string   "net_b"
    t.string   "net_c"
    t.string   "net_d"
    t.string   "net_e"
    t.string   "net_f"
    t.string   "net_g"
    t.string   "org_a"
    t.string   "org_b"
    t.string   "org_c"
    t.string   "org_d"
    t.string   "org_e"
    t.string   "org_f"
    t.string   "org_g"
    t.string   "mesp_a"
    t.string   "mesp_b"
    t.string   "mesp_c"
    t.string   "mesp_d"
    t.string   "mesp_e"
    t.string   "mesp_f"
    t.string   "mesp_g"
    t.string   "relp_a"
    t.string   "relp_b"
    t.string   "relp_c"
    t.string   "relp_d"
    t.string   "relp_e"
    t.string   "relp_f"
    t.string   "relp_g"
    t.string   "com_a"
    t.string   "com_b"
    t.string   "com_c"
    t.string   "com_d"
    t.string   "com_e"
    t.string   "com_f"
    t.string   "com_g"
    t.string   "other_a"
    t.string   "other_who"
    t.string   "other_b"
    t.string   "other_c"
    t.string   "other_d"
    t.string   "other_e"
    t.string   "other_f"
    t.string   "other_g"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

end
