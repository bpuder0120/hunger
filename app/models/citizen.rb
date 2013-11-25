class Citizen < ActiveRecord::Base

  belongs_to :district
  belongs_to :sponsorship

end