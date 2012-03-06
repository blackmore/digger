class Language < ActiveRecord::Base
  set_table_name "Language"
  set_primary_key "LanguageID"
  alias_attribute :name, 'Language'
  validates_presence_of :Language, :on => :create, :message => "can't be blank"
  validates_uniqueness_of :Language, :on => :create, :message => "must be unique"
  has_many :language_users, :foreign_key => "LanguageID"
  has_many :users, :through => :language_users
end
