class Citizen < ActiveRecord::Base
  validates :first_name, :last_name, :age, :sex, presence: true
  validates :district_id, presence: true
  belongs_to :district


end
