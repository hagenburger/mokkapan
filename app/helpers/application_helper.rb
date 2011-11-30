module ApplicationHelper
  
  def post_path(post, options = {})
    post.to_param
  end
  
  def posts_path()
      '/'
  end
  
end
