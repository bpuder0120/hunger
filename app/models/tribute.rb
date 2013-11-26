class Tribute < Citizen
  validates :rating, presence: true
  belongs_to :game
  has_and_belongs_to_many :rounds
  has_many :sponsorships

end