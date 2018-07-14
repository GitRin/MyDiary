require "application_system_test_case"

class WhatadaysTest < ApplicationSystemTestCase
  setup do
    @whataday = whatadays(:one)
  end

  test "visiting the index" do
    visit whatadays_url
    assert_selector "h1", text: "Whatadays"
  end

  test "creating a Whataday" do
    visit whatadays_url
    click_on "New Whataday"

    fill_in "How", with: @whataday.how
    fill_in "When", with: @whataday.when
    click_on "Create Whataday"

    assert_text "Whataday was successfully created"
    click_on "Back"
  end

  test "updating a Whataday" do
    visit whatadays_url
    click_on "Edit", match: :first

    fill_in "How", with: @whataday.how
    fill_in "When", with: @whataday.when
    click_on "Update Whataday"

    assert_text "Whataday was successfully updated"
    click_on "Back"
  end

  test "destroying a Whataday" do
    visit whatadays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Whataday was successfully destroyed"
  end
end
