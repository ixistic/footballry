Given(/^I am a user$/) do
  @regular = FactoryGirl.create :regular
end

When(/^I visit a login page$/) do
  visit '/users/sign_in'
end

Then(/^I should see a login form$/) do
  expect(page).to have_selector('form#new_user')
end

When(/^I submit the form to the post$/) do
  fill_in 'user_email', with: @regular.email
  fill_in 'user_password', with: @regular.password
  click_button 'Log in'
end

Then(/^I should see the main page$/) do
  expect(page).to have_content("Signed in successfully")
end

