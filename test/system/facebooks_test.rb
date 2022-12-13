require "application_system_test_case"

class FacebooksTest < ApplicationSystemTestCase
  setup do
    @facebook = facebooks(:one)
  end

  test "visiting the index" do
    visit facebooks_url
    assert_selector "h1", text: "Facebooks"
  end

  test "creating a Facebook" do
    visit facebooks_url
    click_on "New Facebook"

    fill_in "Content", with: @facebook.content
    fill_in "Image", with: @facebook.image
    fill_in "Title", with: @facebook.title
    click_on "Create Facebook"

    assert_text "Facebook was successfully created"
    click_on "Back"
  end

  test "updating a Facebook" do
    visit facebooks_url
    click_on "Edit", match: :first

    fill_in "Content", with: @facebook.content
    fill_in "Image", with: @facebook.image
    fill_in "Title", with: @facebook.title
    click_on "Update Facebook"

    assert_text "Facebook was successfully updated"
    click_on "Back"
  end

  test "destroying a Facebook" do
    visit facebooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Facebook was successfully destroyed"
  end
end
