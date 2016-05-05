class LandingController < ApplicationController

  def index
  @articles = Article.all.order("created_at DESC")
  @jobs = Job.all.order("created_at DESC")
  @talents = Talent.all.order("created_at DESC")
  end


end
