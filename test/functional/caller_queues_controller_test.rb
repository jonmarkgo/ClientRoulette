require 'test_helper'

class CallerQueuesControllerTest < ActionController::TestCase
  setup do
    @caller_queue = caller_queues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caller_queues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caller_queue" do
    assert_difference('CallerQueue.count') do
      post :create, :caller_queue => @caller_queue.attributes
    end

    assert_redirected_to caller_queue_path(assigns(:caller_queue))
  end

  test "should show caller_queue" do
    get :show, :id => @caller_queue.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @caller_queue.to_param
    assert_response :success
  end

  test "should update caller_queue" do
    put :update, :id => @caller_queue.to_param, :caller_queue => @caller_queue.attributes
    assert_redirected_to caller_queue_path(assigns(:caller_queue))
  end

  test "should destroy caller_queue" do
    assert_difference('CallerQueue.count', -1) do
      delete :destroy, :id => @caller_queue.to_param
    end

    assert_redirected_to caller_queues_path
  end
end
