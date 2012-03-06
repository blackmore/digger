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

ActiveRecord::Schema.define(:version => 0) do

  create_table "Category", :primary_key => "CategoryID", :force => true do |t|
    t.string "Name",   :limit => 32
    t.string "Prefix", :limit => 3,  :null => false
  end

  add_index "category", ["Name"], :name => "Name", :unique => true

  create_table "Checkbox", :primary_key => "CheckboxID", :force => true do |t|
    t.integer "TaskID",                :null => false
    t.string  "Name",   :limit => 64,  :null => false
    t.boolean "Value"
    t.string  "Notes",  :limit => 128
  end

  add_index "checkbox", ["TaskID"], :name => "TaskID"

  create_table "Customer", :primary_key => "CustomerID", :force => true do |t|
    t.string    "Name",            :limit => 128,                   :null => false
    t.string    "Anschrift",       :limit => 128
    t.string    "Strasse",         :limit => 128
    t.string    "PLZ",             :limit => 16
    t.string    "Ort",             :limit => 64
    t.string    "Land",            :limit => 64
    t.string    "Telefon",         :limit => 64
    t.string    "Fax",             :limit => 64
    t.string    "EMail",           :limit => 64
    t.string    "Website",         :limit => 64
    t.string    "Ansprechpartner", :limit => 64
    t.string    "Kommentar",       :limit => 128
    t.boolean   "Active",                         :default => true, :null => false
    t.timestamp "LastChanged",                                      :null => false
  end

  add_index "customer", ["Name"], :name => "Name", :unique => true

  create_table "Firmenkalender", :primary_key => "CalID", :force => true do |t|
    t.date    "SpecialDate"
    t.integer "StaffID"
    t.time    "WorkingHours"
    t.text    "Description"
    t.integer "BackColor",    :limit => 1
  end

  create_table "Function", :primary_key => "FunctionID", :force => true do |t|
    t.string  "Name",         :limit => 64,                   :null => false
    t.string  "ShortName",    :limit => 16
    t.string  "Function",     :limit => 64
    t.integer "Richtwert_A1",               :default => 1440, :null => false
    t.integer "Richtwert_A2",               :default => 1440, :null => false
    t.integer "Richtwert_A3",               :default => 1440, :null => false
    t.integer "Richtwert_B1",               :default => 1440, :null => false
    t.integer "Richtwert_B2",               :default => 1440, :null => false
    t.integer "Richtwert_B3",               :default => 1440, :null => false
    t.integer "Richtwert_C1",               :default => 1440, :null => false
    t.integer "Richtwert_C2",               :default => 1440, :null => false
    t.integer "Richtwert_C3",               :default => 1440, :null => false
  end

  create_table "Language", :primary_key => "LanguageID", :force => true do |t|
    t.string  "Language", :limit => 64,                   :null => false
    t.integer "Sort",     :limit => 2,  :default => 9999, :null => false
  end

  add_index "language", ["Language"], :name => "Language", :unique => true

  create_table "Mitarbeiterkalender", :primary_key => "CalID", :force => true do |t|
    t.date    "SpecialDate"
    t.integer "StaffID"
    t.time    "WorkingHours"
    t.text    "Description"
    t.integer "BackColor",    :limit => 1
  end

  create_table "Production", :primary_key => "ProductionID", :force => true do |t|
    t.string    "ProductionNo", :limit => 32,  :default => "keine Angabe", :null => false
    t.integer   "CustomerID"
    t.integer   "CategoryID"
    t.integer   "ManagerID"
    t.string    "Title",        :limit => 100
    t.date      "NotBefore"
    t.date      "Deadline"
    t.datetime  "CreatedDate"
    t.integer   "CreatedByID"
    t.integer   "StatusID",                    :default => 1,              :null => false
    t.integer   "FactorType",   :limit => 1,   :default => 1,              :null => false
    t.timestamp "LastChanged",                                             :null => false
  end

  add_index "production", ["CategoryID"], :name => "CategoryID"
  add_index "production", ["CreatedByID"], :name => "CreatedByID"
  add_index "production", ["CustomerID"], :name => "CustomerID"
  add_index "production", ["ManagerID"], :name => "ManagerID"
  add_index "production", ["StatusID"], :name => "StatusID"

  create_table "ProductionStatus", :primary_key => "StatusID", :force => true do |t|
    t.string "Name", :limit => 64, :null => false
  end

  add_index "productionstatus", ["Name"], :name => "Name", :unique => true

  create_table "Staff", :primary_key => "StaffID", :force => true do |t|
    t.integer   "GroupID",                         :default => 1,    :null => false
    t.string    "Login",            :limit => 32,                    :null => false
    t.string    "Name",             :limit => 128,                   :null => false
    t.string    "Password",         :limit => 32
    t.string    "EMail",            :limit => 128
    t.boolean   "Active",                          :default => true, :null => false
    t.integer   "NativeLanguageID"
    t.integer   "LastSavedID"
    t.timestamp "LastChanged",                                       :null => false
  end

  add_index "staff", ["GroupID"], :name => "GroupID"
  add_index "staff", ["LastSavedID"], :name => "LastSavedID"
  add_index "staff", ["Login"], :name => "Login", :unique => true
  add_index "staff", ["Name"], :name => "Name", :unique => true
  add_index "staff", ["NativeLanguageID"], :name => "NativeLanguageID"

  create_table "StaffGroup", :primary_key => "GroupID", :force => true do |t|
    t.string "Name", :limit => 64, :null => false
  end

  add_index "staffgroup", ["Name"], :name => "Name", :unique => true

  create_table "StaffLanguage", :id => false, :force => true do |t|
    t.integer "StaffID",    :null => false
    t.integer "LanguageID", :null => false
  end

  add_index "stafflanguage", ["LanguageID"], :name => "LangID"
  add_index "stafflanguage", ["StaffID", "LanguageID"], :name => "StaffID"

  create_table "Status", :primary_key => "StatusID", :force => true do |t|
    t.string "Name", :limit => 32, :null => false
  end

  create_table "Strength", :id => false, :force => true do |t|
    t.integer "StaffID",                                 :null => false
    t.integer "FunctionID",                              :null => false
    t.integer "Value",      :limit => 1, :default => -1, :null => false
  end

  add_index "strength", ["FunctionID"], :name => "FunctionID"
  add_index "strength", ["StaffID"], :name => "StaffID"

  create_table "Task", :primary_key => "TaskID", :force => true do |t|
    t.integer  "ProductionID",                                   :null => false
    t.integer  "Position",     :limit => 2,                      :null => false
    t.integer  "ParentID"
    t.integer  "FunctionID",                                     :null => false
    t.integer  "StaffID"
    t.time     "Duration"
    t.datetime "StartDate"
    t.datetime "EndDate"
    t.boolean  "DateFix",                     :default => false, :null => false
    t.string   "Notes",        :limit => 128
    t.integer  "StatusID",                    :default => 1,     :null => false
    t.integer  "Dongle",       :limit => 2
  end

  add_index "task", ["FunctionID"], :name => "FunctionID"
  add_index "task", ["ParentID"], :name => "ParentID"
  add_index "task", ["ProductionID"], :name => "ProductionID"
  add_index "task", ["StaffID"], :name => "StaffID"
  add_index "task", ["StatusID"], :name => "StatusID"

  create_table "TimeTracking", :primary_key => "TimeTrackingID", :force => true do |t|
    t.integer "ProductionID",                                               :null => false
    t.integer "StaffID",                                                    :null => false
    t.date    "Date",                                                       :null => false
    t.time    "Duration"
    t.decimal "Wert",                        :precision => 10, :scale => 0
    t.integer "TypeID",                                                     :null => false
    t.string  "Comment",      :limit => 128
  end

  add_index "timetracking", ["ProductionID", "StaffID"], :name => "ProductionID"
  add_index "timetracking", ["StaffID"], :name => "StaffID"
  add_index "timetracking", ["TypeID"], :name => "TypeID"

  create_table "TimeTrackingType", :primary_key => "TypeID", :force => true do |t|
    t.string "Name", :limit => 64, :null => false
  end

  add_index "timetrackingtype", ["Name"], :name => "Name", :unique => true

  create_table "Tracking", :primary_key => "TrackingID", :force => true do |t|
    t.integer "ProductionID",                  :null => false
    t.integer "Duration",       :limit => 2
    t.integer "LanguageFromID"
    t.integer "LanguageToID"
    t.string  "MasterType",     :limit => 64
    t.string  "Rollen",         :limit => 64
    t.boolean "VITC"
    t.boolean "MasterTimeCode"
    t.boolean "ImportEZTitles"
    t.boolean "ImportFAB"
    t.boolean "ImportCopy"
    t.boolean "ImportVHS"
    t.string  "AuthoringHouse", :limit => 128
    t.string  "Studio",         :limit => 128
    t.string  "Broadcast",      :limit => 128, :null => false
    t.string  "Filename",       :limit => 128
    t.string  "ProjectType",    :limit => 64
    t.string  "Path",           :limit => 256
    t.string  "OrigPath",       :limit => 256
    t.string  "MemPath",        :limit => 256
    t.string  "NewMemPath",     :limit => 256
    t.boolean "MatMisc"
    t.boolean "MatFeedback"
    t.boolean "MatWishes"
    t.boolean "MatDialogList"
    t.boolean "MatTranslation"
    t.boolean "MatGlossary"
    t.boolean "MatGuidelines"
    t.boolean "MatErrata"
    t.text    "SpecialNotes"
    t.text    "InternalNotes"
    t.string  "TechContact",    :limit => 256
  end

  add_index "tracking", ["LanguageFromID"], :name => "LanguageFromID"
  add_index "tracking", ["LanguageToID"], :name => "LanguageToID"
  add_index "tracking", ["ProductionID"], :name => "ProductionID"

end
