class Production < ActiveRecord::Base
  establish_connection "platform_#{Rails.env}"
  self.table_name = "Production"
  self.primary_key = "ProductionID"
  alias_attribute :title, 'Title'
  alias_attribute :status_id, 'StatusID'
  alias_attribute :deadline, 'Deadline'
  alias_attribute :updated_at, 'CreatedDate'
  alias_attribute :client_id, 'CustomerID'
  belongs_to :client
  belongs_to :client, :class_name => "Client", :foreign_key => "CustomerID", :primary_key => "CustomerID"
end
