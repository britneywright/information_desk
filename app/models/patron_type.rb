class PatronType < ActiveRecord::Base
  validates :name, presence: true
end
