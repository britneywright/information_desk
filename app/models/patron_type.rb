class PatronType < ActiveRecord::Base
  has_many :timespans, through:  :patron_type_occurrences
  validates :name, presence: true
end
