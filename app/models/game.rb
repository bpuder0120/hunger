class Game < ActiveRecord::Base
  
  has_many :rounds
  has_many :tributes


end