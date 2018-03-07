class Service < ApplicationRecord
  has_many :micro_services, class_name: "Service", foreign_key: "macro_service_id"
  belongs_to :macro_service, class_name: "Service"

  accepts_nested_attributes_for :micro_services

  # orders micro_services by id (because heroku) and drops the first
  def normalize
    self.micro_services.sort_by{ |a| a[:id] }.drop(1)
  end
end
