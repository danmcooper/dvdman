class Dvd < ActiveRecord::Base
  attr_accessible :asin, :name, :release_date, :summary, :actor_ids, :director_id

  validates :name, presence: true, uniqueness: true
  validates :summary, presence: true

  has_and_belongs_to_many :actors
  belongs_to :director
end
