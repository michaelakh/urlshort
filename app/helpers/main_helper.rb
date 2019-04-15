module MainHelper
  
  def capitalize_all(string)
    if string.kind_of?(String)
      string.split.map(&:capitalize).join(' ')
    end
  end
  
  def is_number?(string)
    true if Float(string) rescue false
  end
  
  def url?(string)
    uri = URI.parse(string)
    %w( http https ).include?(uri.scheme)
    rescue URI::BadURIError
      false
    rescue URI::InvalidURIError
      false
  end
  
end