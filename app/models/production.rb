class Production < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Production"
  self.primary_key = "ProductionID"
  alias_attribute :production_id, 'ProductionID'
  alias_attribute :title, 'Title'
  alias_attribute :status_id, 'StatusID'
  alias_attribute :deadline, 'Deadline'
  alias_attribute :updated_at, 'CreatedDate'
  alias_attribute :client_id, 'CustomerID'
  alias_attribute :production_number, 'ProductionNo'
  belongs_to :client
  belongs_to :client, :class_name => "Client", :foreign_key => "CustomerID", :primary_key => "CustomerID"
  has_many :tasks, :class_name => "Task", :foreign_key => "ProductionID"
  has_many :time_logs, :class_name => "TimeLog", :foreign_key => "project_number", :primary_key => "ProductionNo"

  #  scope :recent, order("posts.published_at DESC")
  scope :active, where("Production.StatusID = ?", 1).includes(:tasks, :client, :time_logs)
end
