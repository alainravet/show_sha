class ShaController < ApplicationController
  def index
    current_sha = ENV["COMMIT_HASH"] || `git rev-parse HEAD`
    render :text => current_sha
  end
end

