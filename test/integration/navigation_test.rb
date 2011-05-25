require 'test_helper'

CURRENT_SHA = `git rev-parse HEAD`

class NavigationTest < ActiveSupport::IntegrationCase
  def setup
    ENV["COMMIT_HASH"] = nil
  end

  test "the Rails app was properly initialized" do
    assert_kind_of Dummy::Application, Rails.application
  end

  test '/sha displays the current sha' do
    visit '/sha'
    assert_match CURRENT_SHA, page.body
  end

  test '/sha displays the ENV["COMMIT_HASH"] value when it is available' do
    ENV["COMMIT_HASH"] = Time.now.to_s
    visit '/sha'
    assert_match ENV["COMMIT_HASH"], page.body
  end

end
