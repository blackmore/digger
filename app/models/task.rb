class Task < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Task"
  self.primary_key = "TaskID"
  alias_attribute :production_id, 'ProductionID'
  alias_attribute :duration, 'Duration'

  belongs_to :production, :class_name => "Production", :foreign_key => "ProductionID", :primary_key => "ProductionID"
end
