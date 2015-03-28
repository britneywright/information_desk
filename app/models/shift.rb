class Shift < ActiveRecord::Base
  has_many :patron_types
  has_many :request_categories
  has_many :patron_type_occurrences
  has_many :request_category_occurrences
  belongs_to :user
  validates :date,:location,:starttime,:endtime, presence: true 
  after_create :set_patron_type_occurrences, :set_request_category_occurrences

  def timespans
    Timespan.where("starttime >= :start_time OR endtime <= :end_time", {start_time: self.starttime, end_time: self.endtime}).all
  end
  
  def patrontypelist
    PatronType.all
  end

  def requestcategorylist
    RequestCategory.all
  end

  def set_patron_type_occurrences
    timespans = Timespan.where("starttime >= :start_time OR endtime <= :end_time", {start_time: self.starttime, end_time: self.endtime})
    patron_types = PatronType.all
    timespans.each {|a| patron_types.each { |b| PatronTypeOccurrence.create(shift_id: self.id, patron_type_id: b.id, timespan_id: a.id) } }
  end
  
  def set_request_category_occurrences
    timespans = Timespan.where("starttime >= :start_time OR endtime <= :end_time", {start_time: self.starttime, end_time: self.endtime})
    request_categories = RequestCategory.all
    timespans.each {|a| request_categories.each { |b| RequestCategoryOccurrence.create(shift_id: self.id, request_category_id: b.id, timespan_id: a.id) } }
  end

end
