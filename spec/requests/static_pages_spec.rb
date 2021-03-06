require 'spec_helper'



describe "Static pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }
  describe "Home page" do
    before {visit root_path }
    it "should have the content 'Sample App'" do
      expect(page).to have_content('Sample App')
    end

    it "shoud have the right title " do
    expect(page).to have_title("Ruby on rails Tutorial Sample App")
  end
    it "should not have a custom page title" do
        expect(page).not_to have_title('| Home')
    end

  end

    describe "Help page" do
    it "should have the content 'Help'" do
      visit root_path
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title('Help')
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do 
      visit about_path
      expect(page).to have_content('About Us')
    end
     it "should have the title 'About Us'" do
      visit about_path
      expect(page).to have_title("About Us")
    end
  end

describe "Contact page" do
it "should have the content 'Contact'"  do
  visit contact_path
  expect(page).to have_content('Contact')
end
     it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Contact")
    end
end




end