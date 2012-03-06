class User < ActiveRecord::Base
  set_table_name "Staff"
  set_primary_key "StaffID"
  alias_attribute :group_id, 'GroupID'
  alias_attribute :login, 'Login'
  alias_attribute :name, 'Name'
  alias_attribute :password, 'Password'
  alias_attribute :active, 'Active'
  alias_attribute :nativelanguage_id, 'NativeLanguageID'
  alias_attribute :lastsaved_id, 'LastSavedID'
  alias_attribute :updated_at, 'LastChanged'
  belongs_to :nativelanguage, :class_name => "Language", :foreign_key => "NativeLanguageID", :primary_key => "LanguageID"
  has_many :language_users, :foreign_key => "StaffID"
  has_many :languages, :through => :language_users
end
