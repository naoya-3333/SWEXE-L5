class TweetsController < ApplicationController
  def index
    @tweet = Tweet.all
    @like = Like.all
    @user = User.find_by(uid: session[:login_uid])
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    user = User.find_by(uid: current_user.uid)
    @tweet = Tweet.create(message: params[:tweet][:message])
    user.tweets << @tweet
    @tweet.user = user
    if @tweet.save
      redirect_to '/'
    else
        render 'new'
    end
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to '/'
  end
end
