class Dvd < ActiveRecord::Base
  attr_accessible :asin, :name, :release_date, :summary
end
