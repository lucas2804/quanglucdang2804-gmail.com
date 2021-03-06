class RetweetsController < ApplicationController
  before_action :set_retweet, only: [:show, :update, :destroy]

  # GET /retweets
  def index
    @retweets = Retweet.all

    render json: @retweets
  end

  # GET /retweets/1
  def show
    render json: @retweet
  end

  # POST /retweets
  def create
    @retweet = Retweet.find_by(user_id: retweet_params[:user_id], tweet_id: retweet_params[:tweet_id])

    if @retweet
      @retweet.delete
      render json: { retweet: { tweet_id: retweet_params[:tweet_id], retweeted: false } },
             status: :created, location: @retweet
    else
      @retweet = Retweet.new(retweet_params)
      if @retweet.save
        render json: { retweet: { tweet_id: retweet_params[:tweet_id], retweeted: true } },
             status: :created, location: @retweet
      else
        render json: @retweet.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /retweets/1
  def update
    if @retweet.update(retweet_params)
      render json: @retweet
    else
      render json: @retweet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /retweets/1
  def destroy
    @retweet.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_retweet
    @retweet = Retweet.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def retweet_params
    params.require(:retweet).permit(:user_id, :tweet_id, :status)
  end
end
