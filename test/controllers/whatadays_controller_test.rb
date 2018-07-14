require 'test_helper'

class WhatadaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @whataday = whatadays(:one)
  end

  test "should get index" do
    get whatadays_url
    assert_response :success
  end

  test "should get new" do
    get new_whataday_url
    assert_response :success
  end

  test "should create whataday" do
    assert_difference('Whataday.count') do
      post whatadays_url, params: { whataday: { how: @whataday.how, when: @whataday.when } }
    end

    assert_redirected_to whataday_url(Whataday.last)
  end

  test "should show whataday" do
    get whataday_url(@whataday)
    assert_response :success
  end

  test "should get edit" do
    get edit_whataday_url(@whataday)
    assert_response :success
  end

  test "should update whataday" do
    patch whataday_url(@whataday), params: { whataday: { how: @whataday.how, when: @whataday.when } }
    assert_redirected_to whataday_url(@whataday)
  end

  test "should destroy whataday" do
    assert_difference('Whataday.count', -1) do
      delete whataday_url(@whataday)
    end

    assert_redirected_to whatadays_url
  end
end
