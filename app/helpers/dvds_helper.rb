module DvdsHelper
  def amazon_link(dvd, link_title="")
    link_to_if(dvd.asin.blank? == false, link_title, "http://amzn.com/#{dvd.asin}", :target => "blank")
  end
end
