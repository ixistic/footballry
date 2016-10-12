Given(/^I have information for register$/) do
  @data = FactoryGirl.attributes_for :data
end

When(/^I visit a register page$/) do
  visit '/users/sign_up'
end

Then(/^I should see a register form$/) do
  expect(page).to have_selector('form#new_user')
end

When(/^I submit the form to the register$/) do
  fill_in 'user_email', with: @data[:email]
  fill_in 'user_password', with: @data[:password]
  fill_in 'user_password_confirmation', with: @data[:password]
  click_button 'Sign up'
end

Then(/^I should see the main page that already sign in$/) do
  expect(page).to have_content("Welcome! You have signed up successfully")
end






