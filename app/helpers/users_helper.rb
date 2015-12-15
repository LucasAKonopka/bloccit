module UsersHelper
  
  def no_posts?
    @user.posts.empty?
  end
  
  def no_comments?
    @user.comments.empty?
  end
end
