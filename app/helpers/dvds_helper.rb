module DvdsHelper
  def amazon_link(dvd)
    link_to_if(dvd.asin.blank? == false, dvd.asin, "http://amzn.com/#{dvd.asin}", :target => "blank")
  end
end
