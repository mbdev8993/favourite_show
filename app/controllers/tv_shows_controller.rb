class TvShowsController < ApplicationController
  def index
  	if params["search_key"]
  		@tv_shows = TvShow.where(show: params["search_key"]).or(TvShow.where(channel: params[:search_key]))
    else
    	@tv_shows = TvShow.all
    end
  end

  def set_favourite
    @user = User.first                          #just picked a user. we can use any user authentication way e.g devise gem
    @show = TvShow.find(params["id"])
    @user.tv_shows << @show
    ReminderMailer.with(user: @user,show: @show).vsubmission.deliver_now
    binding.pry
    # ReminderMailerWorker.perform_at(((Time.parse(@show.Timeming)-Time.parse("00:30:00")) / 60).minutes.from_now, 'bob', 5)
    # ReminderMailerWorker.perform_at(1.minuts.from_now, @user, @show)
  end
end
