require "rails_helper"

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo "Buy milk"
    # Method called from todo_helper.rb

    click_on "Mark complete"

    expect(page).to display_completed_todo "Buy milk"
    # Method called from todo_helper.rb
  end
end
