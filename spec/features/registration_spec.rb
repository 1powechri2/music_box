require 'rails_helper'

describe "registrational flow" do
  it 'submits a registration successfully' do
    username = 'pumped_2_be_here'

    visit '/'

    click_on "Sign Up to Be a New User"

    expect(current_path).to eq(new_user_path)

    fill_in :user_username, with: username
    fill_in :user_password, with: '12345'

    click_on "Create User"

    expect(current_path).to eq(user_path(User.last))
    expect(page).to have_content("Welcome, #{username}!")
  end
  it 'submits a registration for with duplicate username' do
    username = 'pumped_2_be_here'
    User.create(username: username, password: "uyh4jn")


    visit '/'

    click_on "Sign Up to Be a New User"

    expect(current_path).to eq(new_user_path)

    fill_in :user_username, with: username
    fill_in :user_password, with: '12345'

    click_on "Create User"

    expect(current_path).to eq(users_path)
  end

end
