class LanguageUser < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "StaffLanguage"
  self.primary_key = "StaffID"
  self.primary_key = "LangID"
  belongs_to :language, :class_name => "Language", :foreign_key => "LanguageID"
  belongs_to :user, :class_name => "User", :foreign_key => "StaffID"
end
