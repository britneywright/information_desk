class PatronTypeOccurrence < ActiveRecord::Base
  belongs_to :patron_type
  belongs_to :timespan
  validates :occurrences, numericality: {greater_than_or_equal_to: 0}
end
