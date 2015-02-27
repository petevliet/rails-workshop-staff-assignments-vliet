class Assignment < ActiveRecord::Base
  belongs_to :person
  belongs_to :location

  validates :location_id, presence: true
  validates :role, presence: true
  validate :unique_location

  def unique_location
    if person.assignments.where('id != ?', id).find_by(location_id: location_id, role: role)
     errors.add(:unique_location, "people cannot be assigned to the same location with the same role")
   end
  end
end
