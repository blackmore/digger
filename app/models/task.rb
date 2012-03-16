class Task < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Task"
  self.primary_key = "TaskID"
  alias_attribute :production_id, 'ProductionID'
  alias_attribute :function_id, 'FunctionID'
  alias_attribute :duration, 'Duration'
  alias_attribute :status_id, 'StatusID'
  alias_attribute :staff_id, 'StaffID'

  belongs_to :user, :class_name => "User", :foreign_key => "StaffID", :primary_key => "StaffID"
  belongs_to :production, :class_name => "Production", :foreign_key => "ProductionID", :primary_key => "ProductionID"
end
