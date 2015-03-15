class Shift < ActiveRecord::Base
  has_many :patron_type_occurrences
  has_many :request_category_occurrences
  validates :date,:location,:starttime,:endtime, presence: true 
end
