class District < ActiveRecord::Base
  validates :number, presence: true
  validate :check_state
  has_many :citizens 

  def check_state
    return unless self.number.present?

    if self.number < 1 || self.number > 13
      errors.add(:number, "There are exactly thirteen states.")
    end
  end

end

