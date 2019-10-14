require 'rails_helper'

describe "As a user" do
  it "I can see a list of house members" do
    visit '/'

    select 'Gryffindor', from: :house

    click_on 'Search For Members'

    expect(current_path).to eq('/search')

    expect(page).to have_content('41 Members')

    member = {
      id: "5a109f053dc2080021cd8793",
      name: "Remus Lupin",
      role: "Professor, Defence Against the Dark Arts",
      house: "Gryffindor",
      patronus: "wolf"
    }

    within "#member-#{member[:id]}" do
      expect(page).to have_content(member[:name])
      expect(page).to have_content(member[:role])
      expect(page).to have_content(member[:house])
      expect(page).to have_content(member[:patronus])
    end
  end
end
