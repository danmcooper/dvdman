class Actor < ActiveRecord::Base
  attr_accessible :dob, :gender, :name

  validates :name, presence: true, uniqueness: true
  validates :gender, presence: true

  has_and_belongs_to_many :dvds

end
