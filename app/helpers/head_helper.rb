module HeadHelper
  
  def meta_tag(meta_tag)
    #add array type tester before if statement
    #test functionality
    meta = ''
    if meta_tag.kind_of?(Hash) && meta_tag != nil 
      meta_tag.each do |key,value|
        meta += "<meta name='#{key.to_s}' content='#{value}'>\n"
      end
    else
    end
    
    return meta.html_safe
  end
  
end