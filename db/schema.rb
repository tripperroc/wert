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
    t.string   "orientation"
    t.string   "gender"
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
    t.string   "orientation"
    t.string   "gender"
    t.boolean  "facebook"
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
    t.string   "gender"
    t.string   "latino"
    t.boolean  "namerican"
    t.boolean  "asian"
    t.boolean  "aamerican"
    t.boolean  "pacific"
    t.boolean  "eamerican"
    t.string   "marital_status"
    t.string   "num_children"
    t.boolean  "work_more_than_35"
    t.boolean  "work_less_than_35"
    t.boolean  "work_yes_ill"
    t.boolean  "work_yes_vacation"
    t.boolean  "work_yes_absent"
    t.boolean  "unemployed_looking"
    t.boolean  "unemployed_not_looking"
    t.boolean  "unemployed_disabled"
    t.boolean  "retired"
    t.boolean  "school_fulltime"
    t.boolean  "school_parttime"
    t.boolean  "school_break"
    t.boolean  "homemaker"
    t.boolean  "work_else"
    t.string   "highest_grade_level_completed"
    t.string   "income"
    t.string   "health_care_provider"
    t.string   "have_health_plan"
    t.string   "general_health"
    t.string   "how_satisfied"
    t.integer  "no_days"
    t.integer  "height_feet"
    t.integer  "height_inches"
    t.integer  "weight"
    t.string   "one_drink"
    t.string   "twelve_drinks"
    t.string   "drink_frequency_yearly"
    t.string   "drink_frequency_daily"
    t.string   "binge_drink_yearly"
    t.string   "binge_drink_quickly_yearly"
    t.string   "smoked_last_year"
    t.string   "smoked_yearly"
    t.boolean  "sedatives_last_year"
    t.boolean  "tranquilizers_last_year"
    t.boolean  "painkillers_last_year"
    t.boolean  "stimulants_last_year"
    t.boolean  "marijuana_last_year"
    t.boolean  "hallucinogens_last_year"
    t.boolean  "inhalents_last_year"
    t.boolean  "heroin_last_year"
    t.boolean  "drugs_other_last_year"
    t.string   "ever_self_harm"
    t.string   "ever_seriously_ill"
    t.string   "violence_victim_ever"
    t.string   "violence_victim_parents"
    t.string   "violence_ever_neglected"
    t.string   "violence_ever_spouse"
    t.string   "violence_ever_other"
    t.string   "violence_ever_mugged"
    t.string   "care_swear"
    t.string   "care_fear"
    t.string   "care_harm"
    t.string   "sex_feelings"
    t.string   "sex_who"
    t.string   "sex_category"
    t.string   "discrimination_insurance"
    t.string   "discrimination_how_treated"
    t.string   "discrimination_public"
    t.string   "discrimination_job"
    t.string   "discrimination_bullied"
    t.string   "ever_aids"
    t.string   "ever_suicidal"
    t.boolean  "suicidal_thought"
    t.boolean  "suicidal_plan"
    t.boolean  "suicidal_note_hidden"
    t.boolean  "suicidal_note_open"
    t.boolean  "suicidal_method"
    t.boolean  "suicidal_attempt"
    t.boolean  "suicidal_medical"
    t.boolean  "suicidal_not_serious"
    t.string   "frequency_facebook"
    t.string   "frequency_twitter"
    t.string   "frequency_google_plus"
    t.string   "frequency_myspace"
    t.string   "frequency_linkedin"
    t.string   "frequency_other"
    t.string   "frequency_tumblr"
    t.string   "frequency_trevorspace"
    t.string   "frequency_grindr"
    t.string   "frequency_scruff"
    t.string   "frequency_jackd"
    t.string   "frequency_hornet"
    t.string   "frequency_yelp"
    t.string   "frequency_foursquare"
    t.string   "frequency_flickr"
    t.string   "frequency_youtube"
    t.string   "frequency_pinterest"
    t.string   "frequency_instagram"
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
