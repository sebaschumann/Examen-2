require "test_helper"

class EnsayosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ensayo = ensayos(:one)
  end

  test "should get index" do
    get ensayos_url
    assert_response :success
  end

  test "should get new" do
    get new_ensayo_url
    assert_response :success
  end

  test "should create ensayo" do
    assert_difference('Ensayo.count') do
      post ensayos_url, params: { ensayo: { name: @ensayo.name } }
    end

    assert_redirected_to ensayo_url(Ensayo.last)
  end

  test "should show ensayo" do
    get ensayo_url(@ensayo)
    assert_response :success
  end

  test "should get edit" do
    get edit_ensayo_url(@ensayo)
    assert_response :success
  end

  test "should update ensayo" do
    patch ensayo_url(@ensayo), params: { ensayo: { name: @ensayo.name } }
    assert_redirected_to ensayo_url(@ensayo)
  end

  test "should destroy ensayo" do
    assert_difference('Ensayo.count', -1) do
      delete ensayo_url(@ensayo)
    end

    assert_redirected_to ensayos_url
  end
end
