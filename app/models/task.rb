class Task < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Task"
  self.primary_key = "TaskID"
  alias_attribute :production_id, 'ProductionID'
  alias_attribute :function_id, 'FunctionID'
  alias_attribute :duration, 'Duration'
  alias_attribute :status_id, 'StatusID'
  alias_attribute :staff_id, 'StaffID'
  alias_attribute :start_of_task, 'StartDate'
  alias_attribute :end_of_task, 'EndDate'

  belongs_to :user, :class_name => "User", :foreign_key => "StaffID", :primary_key => "StaffID"
  belongs_to :production, :class_name => "Production", :foreign_key => "ProductionID", :primary_key => "ProductionID"
  belongs_to :functions, :class_name => "Function", :foreign_key => "FunctionID", :primary_key => "FunctionID"

  scope :next_two_weeks, lambda {
    end_date = 14.business_days.from_now
    where('StartDate' => ((Date.today)..(end_date.to_date)))
  }

  scope :next_7business_days, lambda {
    end_date = 7.business_days.from_now
    where('StartDate' => ((Date.today)..(end_date.to_date)))
  }
end
