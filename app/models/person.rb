class Person < ActiveRecord::Base

  validates :last_name, presence: true
  validates :title || :first_name, presence: true

  def full_name
    "#{title} #{first_name} #{last_name}"
  end

end
