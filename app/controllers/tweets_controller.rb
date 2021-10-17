class TweetsController < ApplicationController
  def index
    @tweet = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.create(message: params[:tweet][:message])
    @tweet.user_id = "1"
    if @tweet.save
      redirect_to '/tweets/index'
    else
        render 'new'
    end
  end
end
