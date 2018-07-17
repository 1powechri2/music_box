require 'rails_helper'

describe 'login workflow' do
  it 'allows registered users to log in successfully' do
    user = User.create(username: "he", password: "test")
    visit '/'

    click_on "I Already Have an Account"

    expect(current_path).to eq(login_path)

    fill_in :username, with: user.username
    fill_in :password, with: user.password

    click_on "Log In"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Log Out")
    expect(page).to_not have_content("I Already Have an Account")
  end
end
