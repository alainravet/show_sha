class ShaController < ApplicationController
  layout false
  def index
    @sha = ENV["COMMIT_HASH"] || `git rev-parse HEAD`
  end
end
