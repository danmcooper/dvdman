class Director < ActiveRecord::Base
  attr_accessible :dob, :gender, :name, :dvd_ids

  validates :name, presence: true, uniqueness: true
  validates :gender, presence: true

  has_many :dvds 
end
