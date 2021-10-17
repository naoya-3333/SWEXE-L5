class LikesController < ApplicationController
  def create
    
    tweet = Tweet.find(params[:tweet_id])
    user = User.find_by(uid: session[:login_uid])
    if Like.find_by(user_id: user.id)
      redirect_to root_path
    else
      user.like_tweets << tweet
      redirect_to root_path
    end
  end
  
  def destroy
    tweet = Tweet.find(params[:tweet_id])
    user = User.find_by(uid: session[:login_uid])
    if Like.find_by(tweet_id: tweet.id,user_id: user.id)
      tweet.likes.find_by(user_id: user.id).destroy
      redirect_to '/'
    else
      redirect_to'/'
    end
    
  end
end
