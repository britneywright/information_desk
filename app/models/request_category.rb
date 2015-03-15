class RequestCategory < ActiveRecord::Base
  has_many :request_type_occurrences
  validates :name, presence: true
end
