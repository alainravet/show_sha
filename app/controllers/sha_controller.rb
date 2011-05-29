class ShaController < ApplicationController

  respond_to :html, :xml, :json

  def index
    sha   =   heroku_SHA || local_SHA
    @info =   {:sha => sha[0,10]}
    respond_with @info
  end

private
  def heroku_SHA
    ENV["COMMIT_HASH"]
  end

  def local_SHA
    `git rev-parse HEAD`
  end
end