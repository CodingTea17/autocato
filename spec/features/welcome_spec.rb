require 'rails_helper'

RSpec.feature 'Welcome', type: :feature do
  scenario 'Visitor lands on welcome page' do
    visit root_path

    expect(page).to have_content t('welcome.index.greeting')
  end

  scenario 'Visitor can toggle from sign up to log in and back', :js do
    visit root_path

    welcome_page.open_log_in_form
    welcome_page.open_sign_up_form

    expect(page).to show :sign_up_form
  end
end
