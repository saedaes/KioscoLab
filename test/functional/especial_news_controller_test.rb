require 'test_helper'

class EspecialNewsControllerTest < ActionController::TestCase
  setup do
    @especial_news = especial_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:especial_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create especial_news" do
    assert_difference('EspecialNew.count') do
      post :create, especial_news: { publicacion_id: @especial_news.publicacion_id }
    end

    assert_redirected_to especial_news_path(assigns(:especial_news))
  end

  test "should show especial_news" do
    get :show, id: @especial_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @especial_news
    assert_response :success
  end

  test "should update especial_news" do
    put :update, id: @especial_news, especial_news: { publicacion_id: @especial_news.publicacion_id }
    assert_redirected_to especial_news_path(assigns(:especial_news))
  end

  test "should destroy especial_news" do
    assert_difference('EspecialNew.count', -1) do
      delete :destroy, id: @especial_news
    end

    assert_redirected_to especial_news_path
  end
end
