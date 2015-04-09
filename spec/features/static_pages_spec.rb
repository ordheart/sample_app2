require 'rails_helper'

RSpec.describe "Static pages" do
  let(:base_title) {"Ruby on Rails Tutorial Sample APP"}
  describe "Home page" do
    before {visit root_path}
    it "should have the h1 'Sample App'" do
      expect(page).to have_selector('h1', :text => 'Sample App')
    end
    it "should have the title 'Home'" do
      expect(page).to have_title("#{base_title} | Home")
    end

  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit static_pages_help_path
      expect(page).to have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      visit static_pages_help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit static_pages_about_path
      expect(page).to have_selector( 'h1', :text => 'About Us')
    end
    it "should have the h1 'About Us'" do
      visit static_pages_about_path
      expect(page).to have_title( "#{base_title} | About Us")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact Us'" do
      visit static_pages_contact_path
      expect(page).to have_selector( 'h1', :text => 'Contact Us')
    end
    it "should have the h1 'Contact Us'" do
      visit static_pages_contact_path
      expect(page).to have_title( "#{base_title} | Contact")
    end
  end
end

