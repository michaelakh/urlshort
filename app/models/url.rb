class Url < ApplicationRecord
  
  REGEX = URI::regexp
  
  validates_presence_of :url
  # validates_uniqueness_of :url
  validates_format_of :url, :with => REGEX
  
  validate :url_format
  validate :http_format
  validate :tld_format
  private
  
  def url_format
    if url.match(REGEX) == nil
      errors.add(:url, "is Invalid. Unable to shorten that link")
    end
  end
  
  def http_format
    if url == "http://"
      errors.add(:url, "can't be blank")
    end
  end
  
  def tld_format
    if url.match(/\..+/) == nil
      errors.add(:url, "is Invalid. Unable to shorten that link")
    end
  end
end
 