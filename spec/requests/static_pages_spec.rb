require 'spec_helper'

describe "Static pages" do
    describe "Home page" do
    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Nomicator")
    end

    it "should have the content 'Nomicator'" do
      visit '/static_pages/home'
      expect(page).to have_content('Nomicator')
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Nomicator | Help")
    end

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end
  describe "About page" do
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Nomicator | About")
    end

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end
end
