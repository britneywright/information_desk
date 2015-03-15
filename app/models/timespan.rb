class Timespan < ActiveRecord::Base
  validates :starttime, :endtime, presence: true
  after_create :set_name
  after_save :set_name

  def set_name
    self.name = "#{self.starttime} - #{self.endtime}"
  end
end
