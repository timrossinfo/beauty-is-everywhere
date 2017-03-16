require 'rails_helper'

RSpec.feature "Episode Destruction", type: :feature do

  background do
    Episode.new(name: 'Episode 1').save!(validate: false)
  end

  scenario 'A user vainly attempts to destroy an episode' do
    visit '/episodes'
    expect(page).to have_content "Episode 1"
    click_on 'Destroy'
    expect(page).to have_content "You can't destroy joy."
    expect(page).to have_content "Episode 1"
  end

end
