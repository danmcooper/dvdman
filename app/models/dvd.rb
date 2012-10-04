class Dvd < ActiveRecord::Base
  attr_accessible :asin, :name, :release_date, :summary

  validates :name, presence: true, uniqueness: true
  validates :summary, presence: true
end
