class Service < ApplicationRecord
  has_many :micro_services, class_name: "Service", foreign_key: "macro_service_id"
  belongs_to :macro_service, class_name: "Service"

  accepts_nested_attributes_for :micro_services
end
