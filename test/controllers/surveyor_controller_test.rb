class SurveyorsControllerTest < ActionController::TestCase
  test "basic" do
    #auth = FbGraph::Auth.new(Facebooker2.app_id, Facebooker2.secret)
    #out = auth.fetch(Facebooker2.app_id.to_s + "/accounts/test-users")
   # out2 = FbGraph::User.fetch(URI.encode(Facebooker2.app_id.to_s + "/accounts/test-users?access_token=" + Facebooker2.app_id.to_s + "|" + Facebooker2.secret.to_s))
    #print out2

  #  uri = URI(URI.encode("https://graph.facebook.com/" + Facebooker2.app_id.to_s + "/accounts/test-users?access_token=" + Facebooker2.app_id.to_s + "|" + Facebooker2.secret.to_s))
   # out = Net::HTTP.get(uri) # => String
    out =  Net::HTTP.get(URI(URI.encode("https://graph.facebook.com/179445217929/accounts/test-users?access_token=179445217929|3f881df113dc48cd63b49de1fa1ca39a")))
    outhash = JSON.parse(out)
    #get (:check,, {'facebook_access_token' => outhash["data"][0]["access_token"].to_s, 'facebook_account_number' => outhash["data"][0]["id"].to_i})
    print outhash["data"][0]["access_token"]
    #print "booyaa"
    assert_response :success
    #assert_not_nil assigns(:posts)
  end
end
