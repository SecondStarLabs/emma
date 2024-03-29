require "application_system_test_case"

class ContactMessagesTest < ApplicationSystemTestCase
  setup do
    @contact_message = contact_messages(:one)
  end

  test "visiting the index" do
    visit contact_messages_url
    assert_selector "h1", text: "Contact Messages"
  end

  test "creating a Contact message" do
    visit contact_messages_url
    click_on "New Contact Message"

    fill_in "Email", with: @contact_message.email
    fill_in "First name", with: @contact_message.first_name
    fill_in "Last name", with: @contact_message.last_name
    fill_in "Message", with: @contact_message.message
    fill_in "Phone number", with: @contact_message.phone_number
    fill_in "Subject", with: @contact_message.subject
    click_on "Create Contact message"

    assert_text "Contact message was successfully created"
    click_on "Back"
  end

  test "updating a Contact message" do
    visit contact_messages_url
    click_on "Edit", match: :first

    fill_in "Email", with: @contact_message.email
    fill_in "First name", with: @contact_message.first_name
    fill_in "Last name", with: @contact_message.last_name
    fill_in "Message", with: @contact_message.message
    fill_in "Phone number", with: @contact_message.phone_number
    fill_in "Subject", with: @contact_message.subject
    click_on "Update Contact message"

    assert_text "Contact message was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact message" do
    visit contact_messages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact message was successfully destroyed"
  end
end
