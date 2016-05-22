class Post < ActiveRecord::Base

  def timestamp
    created_at.strftime('%d %B %Y %H:%M:%S')
  end
  
  self.per_page = 10
  
end
