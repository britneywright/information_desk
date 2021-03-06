require 'rails_helper'

feature 'User Management' do
  scenario "adds a new user" do
    manager = create(:admin)

    visit root_path
    click_link 'Log In'
    fill_in 'Email', with: manager.email
    fill_in 'Password', with: manager.password
    click_button 'Log in'
    visit root_path
    expect{
      click_link 'Users'
      click_link 'New User'
      fill_in 'Firstname', with: 'Who'
      fill_in 'Lastname', with: 'What'
      fill_in 'Email', with: 'newuser@example.com'
      fill_in 'Password', with: 'secret123'
      fill_in 'Password confirmation', with: 'secret123'
      click_button 'Create User'
    }.to change(User, :count).by(1)
    expect(current_path).to eq users_path
    within 'h1' do
      expect(page).to have_content 'Users'
    end
    expect(page).to have_content 'newuser@example.com'
  end
end
