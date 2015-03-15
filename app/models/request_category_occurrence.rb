class RequestCategoryOccurrence < ActiveRecord::Base
  belongs_to :request_category
  belongs_to :timespan
  belongs_to :shift
  validates :occurrences, numericality: {greater_than_or_equal_to: 0}
end
