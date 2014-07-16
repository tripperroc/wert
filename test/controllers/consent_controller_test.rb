require 'test_helper'

class ConsentControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
   # assert_not_nil assigns(:posts)
  end

  test "basic" do

    out =  Net::HTTP.get(URI(URI.encode("https://graph.facebook.com/179445217929/accounts/test-users?access_token=179445217929|3f881df113dc48cd63b49de1fa1ca39a")))
    outhash = JSON.parse(out)
    get :check, nil, {'recruitee_coupon' => '814', 'facebook_access_token' => outhash['data'][0]['access_token'].to_s, 'facebook_account_number' => outhash['data'][0]['id'].to_i}
   
    out =  Net::HTTP.get(URI(URI.encode("https://graph.facebook.com/" + outhash['data'][0]['id'])))

    print out
    assert_redirected_to :controller => 'surveyor', :action => 'create', :id => session[:facebook_response_id]
   
  end
end
