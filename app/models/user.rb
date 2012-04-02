class User < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Staff"
  self.primary_key = "StaffID"
  alias_attribute :group_id, 'GroupID'
  alias_attribute :login, 'Login'
  alias_attribute :name, 'Name'
  alias_attribute :password, 'Password'
  alias_attribute :active, 'Active'
  alias_attribute :nativelanguage_id, 'NativeLanguageID'
  alias_attribute :lastsaved_id, 'LastSavedID'
  alias_attribute :updated_at, 'LastChanged'
  belongs_to :nativelanguage, :class_name => "Language", :foreign_key => "NativeLanguageID", :primary_key => "LanguageID"
  belongs_to :teamlanguage, :class_name => "Language", :foreign_key => :team_id, :primary_key => "LanguageID"
  has_many :language_users, :foreign_key => "StaffID"
  has_many :languages, :through => :language_users
  # has_one :useraddon
  has_many :tasks, :class_name => "Task", :foreign_key => "StaffID"
  scope :belongs_to_team, where("Staff.team_id > ?", 0)

  scope :active, belongs_to_team.where("Staff.Active" => true)#.where("Staff.team_id" == 0)
  #scope :active, where("Staff.Active IS TRUE AND Staff.team_id IS NOT NULL")
end
