class Assignment < ActiveRecord::Base
  belongs_to :person
  belongs_to :location

  validates :location_id, presence: :true
  validates :role, presence: :true
end
