class Affiliation < ActiveRecord::Base
  attr_accessible :name
  has_many :clients_id
end
