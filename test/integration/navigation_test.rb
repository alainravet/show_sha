require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase
  test "the Rails app was properly initialized" do
    assert_kind_of Dummy::Application, Rails.application
  end
end
