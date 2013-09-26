require 'spec_helper'

describe "Static pages" do
    describe "Home page" do
    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Nomicator")
    end

    it "should have the content 'Nomicator'" do
      visit root_path
      expect(page).to have_content('Nomicator')
    end
    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    it "should have the right title" do
      visit help_path
      expect(page).to have_title("Nomicator | Help")
    end

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
  end
  describe "About page" do
    it "should have the right title" do
      visit about_path
      expect(page).to have_title("Nomicator | About")
    end

    it "should have the content 'About'" do
      visit about_path
      expect(page).to have_content('About')
    end
  end
    require 'spec_helper'

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Nomicator | Contact")
    end
  end
end
