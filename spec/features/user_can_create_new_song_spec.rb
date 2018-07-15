require 'rails_helper'

describe 'A user can create a new song' do
  context 'A user visits the new song page' do
    it 'fills out the form and creates a new song' do
      visit new_song_path

      fill_in "song[title]", with: 'ytytyt'
      fill_in "song[length]", with: 8
      fill_in "song[play_count]", with: 654

      click_on "Create Song"

      expect(page).to have_content('ytytyt')
    end
  end
end
