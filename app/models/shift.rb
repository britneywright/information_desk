class Shift < ActiveRecord::Base
  has_many :patron_type_occurrences
  has_many :request_category_occurrences
  belongs_to :user
  validates :date,:location,:starttime,:endtime, presence: true 
  after_create :grid

  def grid
    list = Timespan.where("starttime >= :start_time AND starttime < :end_time", {start_time: self.first.starttime, end_time: self.first.endtime})
    list_ids = list.map {|a| a.id}
    list_ids.map {|a| PatronType.all.map {|b| PatronTypeOccurrence.create(shift_id: self.id, patron_type_id: a, timespan_id: b) } }
  end
end
