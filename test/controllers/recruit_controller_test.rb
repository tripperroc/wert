class RecruitsControllerTest < ActionController::TestCase
  test "should get invitation" do
    get (:invitation, {'id' => "585"})
    assert_response :success
    assert_not_nil assigns(:posts)
  end
end
