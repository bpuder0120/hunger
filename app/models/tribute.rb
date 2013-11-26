class Tribute < Citizen
  validates :alive?, :rating, presence: true
  belongs_to :game
  has_and_belongs_to_many :rounds
  has_many :sponsors, :through => :sponsorships

end