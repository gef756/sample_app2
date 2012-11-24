require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
  describe "Home page" do
     before {visit root_path}
     subject { page }
#    it "should have the content 'Sample App'" do
#      visit '/static_pages/home'
#      page.should have_content('Sample App')
#    end
    it "should have the h1 'Sample App'" do
      should have_selector('h1', :text => 'Sample App')
    end

   # it "should have the right title" do
   #   should have_selector('title', text: "#{base_title}")
   # end

    it "should not have a custom page title" do
      should_not have_selector('title', text: '| Home')
    end
  end

  describe "Help page" do

#    it "should have the content 'Help'" do
#      visit '/static_pages/help'
#      page.should have_content('Help')
#    end
    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
#    it "should have the right title" do
#      visit '/static_pages/help'
#      #page.should have_xpath("//title",
#      
#     # page.should have_content('title')
#      page.should have_selector('title', :text => "#{base_title} | Help")
#    end
  end

  describe "About page" do
#    it "should have the content 'About Us'" do
#      visit '/static_pages/about'
#      page.should have_content('About Us')
#    end
    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

#    it "should have the right title" do
#      visit '/static_pages/about'
#      page.should have_selector('title',
#                    :text => "#{base_title} | About")
#    end
  end
  
  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end
#    it "should have the right title" do
#      visit '/static_pages/contact'
#      page.should have_selector('title',
#                    :text => "#{base_title} | Contact")
#    end
  end
end
