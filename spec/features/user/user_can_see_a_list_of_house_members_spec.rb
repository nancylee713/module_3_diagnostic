require 'rails_helper'

describe "As a user" do
  it "I can see a list of house members" do
    visit '/'

    select 'Gryffindor', from: :house

    click_on 'Search For Members'

    save_and_open_page
    expect(current_path).to eq('/search')

    expect(page).to have_content('21 Members')

    within "#member-#{member.id}" do
      expect(page).to have_content(member.name)
      expect(page).to have_content(member.role)
      expect(page).to have_content(member.house)
      expect(page).to have_content(member.patronus)
    end
  end
end
