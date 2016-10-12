Given(/^I am a admin$/) do
  @admin = FactoryGirl.create :admin
end

Given(/^I have information of new users$/) do
  @data = FactoryGirl.attributes_for :data
end

Then(/^I am signed in$/) do
  visit '/users/sign_in'
  fill_in 'user_email', with: @admin.email
  fill_in 'user_password', with: @admin.password
  click_button 'Log in'
end

When(/^I visit a admin page$/) do
  visit '/admin/'
end

Then(/^I should see a link 'User' for manage user$/) do
  expect(page).to have_link('User')
end

When(/^I click the link 'User'$/) do
  find_link('User', href: "/admin/user").click
end

Then(/^I should see a link 'Add new' for add new user$/) do
  expect(page).to have_link('Add new')
end

When(/^I click the link 'Add new'$/) do
  find_link('Add new').click
end

Then(/^I should see a add user form$/) do
  expect(page).to have_selector('div#user_email_field')
end

When(/^I submit the form for add new user$/) do
  fill_in 'user_email', with: @data[:email]
  fill_in 'user_password', with: @data[:password]
  fill_in 'user_password_confirmation', with: @data[:password]
  click_button 'Save'
end

Then(/^I should see the new user$/) do
  expect(page).to have_content("#{@data[:email]}")
end
