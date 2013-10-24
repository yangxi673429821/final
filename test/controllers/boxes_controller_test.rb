require 'test_helper'

class BoxesControllerTest < ActionController::TestCase
  setup do
    @box = boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create box" do
    assert_difference('Box.count') do
      post :create, box: { barcode: @box.barcode, date_returned: @box.date_returned, expected_return_date: @box.expected_return_date, loan_date: @box.loan_date, name: @box.name, student_name: @box.student_name, ucard: @box.ucard }
    end

    assert_redirected_to box_path(assigns(:box))
  end

  test "should show box" do
    get :show, id: @box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @box
    assert_response :success
  end

  test "should update box" do
    patch :update, id: @box, box: { barcode: @box.barcode, date_returned: @box.date_returned, expected_return_date: @box.expected_return_date, loan_date: @box.loan_date, name: @box.name, student_name: @box.student_name, ucard: @box.ucard }
    assert_redirected_to box_path(assigns(:box))
  end

  test "should destroy box" do
    assert_difference('Box.count', -1) do
      delete :destroy, id: @box
    end

    assert_redirected_to boxes_path
  end
end
