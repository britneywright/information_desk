class Shift < ActiveRecord::Base
  validates :date,:location,:starttime,:endtime, presence: true 
end
