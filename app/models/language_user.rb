class LanguageUser < ActiveRecord::Base
  set_table_name "StaffLanguage"
  set_primary_key "StaffID"
  set_primary_key "LangID"
  belongs_to :language, :class_name => "Language", :foreign_key => "LanguageID"
  belongs_to :user, :class_name => "User", :foreign_key => "StaffID"
end
