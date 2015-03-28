require 'rails_helper'

feature 'Shift' do
  scenario 'works a shift' do
    user = create(:user)
    visit root_path
    click_link "Log In"
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    visit root_path
    click_link "New Shift"
    within '.description' do
     expect(page).to have_content user.firstname
     expect(page).to have_content user.lastname 
     expect(page).to have_content 'Date'
     fill_in 'Date', with: Date.today
     fill_in 'Location', with: 'Johnson Center' 
     fill_in 'Starttime', with: '7:00 a.m.'
     fill_in 'Endtime', with: '9:00 a.m.'
    click_button 'Start Shift'
    end
    save_and_open_page
    expect(page).to have_content 'Johnson Center'
    expect(page).to have_content '7:30 a.m.'
    expect(page).to have_content 'Phone Calls'
  end
end
