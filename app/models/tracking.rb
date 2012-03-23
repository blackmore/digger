class Tracking < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Tracking"
  self.primary_key = "TrackingID"
  alias_attribute :run_length, 'Duration'
  alias_attribute :source_lang, 'LanguageFromID'
  alias_attribute :target_lang, 'LanguageToID'

  belongs_to :source, :class_name => "Language", :foreign_key => "LanguageFromID", :primary_key => "LanguageID"
  belongs_to :target, :class_name => "Language", :foreign_key => "LanguageToID", :primary_key => "LanguageID"
end
