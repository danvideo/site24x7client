require "minitest/autorun"
require "./test/test_helper"

class TestUser < Minitest::Test

  def setup
    @user = Site24x7client::User.new(JSON.parse(File.read("./test/fixtures/user_default.json")))
  end

  def test_user_has_attributes
    assert_instance_of Site24x7client::User, @user
    assert_equal @user.user_role, 10
    assert_equal @user.notify_medium, [1]
    assert_equal @user.alert_settings["dont_alert_on_days"], [0, 1, 2, 3, 4, 5, 6]
    assert_equal @user.display_name, ""
    assert_equal @user.email_address, ""
  end
end

      # :display_name,     # string  Mandatory Name of the User.
      # :email_address,    # string  Mandatory Email address of the user.
      # :user_role,        # string  Mandatory Role of the user for accessing Site24x7.  
      # :notify_medium,    # array Mandatory Notify medium to receive alerts.
      # :alert_settings,   # json  Mandatory Settings for receiving. JSON Format: below