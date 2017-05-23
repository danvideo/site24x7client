require "minitest/autorun"
require "./test/test_helper"

class TestUserMapping < Minitest::Test

  def setup
    @user = Site24x7client::User.new(SOMEWHERE) # much better if get User.model in fixtures w/o json
    @user_json = JSON.parse(File.read("./test/fixtures/user_default.json"))
  end

  def test_user_maps_to_json_properly
    assert_instance_of Site24x7client::User, @user
    # has required Mandatory fields
    assert_equal @user.user_role, 10
    assert_equal @user.notify_medium, [1]
    assert_equal @user.alert_settings["dont_alert_on_days"], [0, 1, 2, 3, 4, 5, 6]
    assert_equal @user.display_name, ""
    assert_equal @user.email_address, ""
    # now test mappings 
    as_hash   = Site24x7client::UserMapping.hash_for(:create, @user)
    as_string = Site24x7client::UserMapping.representation_for(:create, @user)
    assert_equal @user, as_hash
    assert_equal @user_json, as_string
  end

# # the hash keys and values should == the User.attributes
# as_hash   = 
# as_string = Site24x7client::UserMapping.representation_for(:create, @user)

end

      # :display_name,     # string  Mandatory Name of the User.
      # :email_address,    # string  Mandatory Email address of the user.
      # :user_role,        # string  Mandatory Role of the user for accessing Site24x7.  
      # :notify_medium,    # array Mandatory Notify medium to receive alerts.
      # :alert_settings,   # json  Mandatory Settings for receiving. JSON Format: below