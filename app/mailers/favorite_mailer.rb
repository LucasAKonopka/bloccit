class FavoriteMailer < ApplicationMailer
  default from: "Lucas@Bloccit.com"
  
   def new_comment(user, post, comment)
 
 # #18
     headers["Message-ID"] = "<comments/#{comment.id}@your-app-name.example>"
     headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
     headers["References"] = "<post/#{post.id}@your-app-name.example>"
 
     @user = user
     @post = post
     @comment = comment
 
 # #19
     mail(to: user.email, subject: "New comment on #{post.title}")
   end
   
   def new_post(user, post)
     headers["Message-ID"] = "<post/#{post.id}@your-app-name.example>"
     headers["In-Reply-To"] = "<post/#{post.id}@your-app-name.example>"
     headers["References"] = "<post/#{post.id}@your-app-name.example>"
     
     @post = post
     @user = user
     
     mail(to: user.email, subject: "You favorited your post #{post.title}")
   end
end
