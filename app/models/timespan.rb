class Timespan < ActiveRecord::Base
  has_many :patron_types, through: :patron_type_occurrences
  has_many :request_types, through: :request_type_occurrences
  validates :starttime, :endtime, presence: true
end
