require 'spec_helper'

describe "Static pages" do

  describe "Home page"  do
    it "deberia tener la etiqueta h1 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('h1',:text => 'Home')
    end

    it "deberia tener el titulo correcto" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page"  do

    it "deberia tener la etiqueta h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "deberia tener el titulo correcto" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end

  end
  
  describe "About page"   do

    it "deberia tener la etiqueta h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1',:text => 'About Us')
    end
    it "deberia tener el titulo correcto" do
      visit '/static_pages/about'
      page.should have_selector('title',:text => "Ruby on Rails Tutorial Sample App | About Us")
    end

    
  end

end