class Game < ActiveRecord::Base
  has_many :rounds
  has_many :tributes

def reaping
  (1..12).each do |district|
    self.tributes << Citizen.where("(age > 11 OR age < 19) AND district = #{district} AND sex = 'M'").sample
    self.tributes << Citizen.where("(age > 11 OR age < 19) AND district = #{district} AND sex = 'F'").sample
  end
end

end