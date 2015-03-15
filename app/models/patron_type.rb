class PatronType < ActiveRecord::Base
  has_many :patron_type_occurrences
  validates :name, presence: true
end
