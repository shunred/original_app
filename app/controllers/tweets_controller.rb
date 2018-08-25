class TweetsController < ApplicationController

	def index
		@tweets = Tweet.all.order('id DESC')
	end
    
    def new
    	@tweet = Tweet.new
    end

    def create
    	Tweet.create(tweet_params)
    end

    def show
    	@tweet = Tweet.find(params[:id])
    end

    private
    def tweet_params
    	params.require(:tweet).permit(:text)
    end

end
