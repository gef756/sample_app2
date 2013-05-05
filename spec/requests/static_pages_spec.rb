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
#  render_views
  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_selector('h1',     text: heading) }
    # it { should have_selector('title, text: full_title(page_title)) }
    it { should have_title(page_title) }
  end

  describe "Home page" do
     before {visit root_path}
#    it "should have the content 'Sample App'" do
#      visit '/static_pages/home'
#      page.should have_content('Sample App')
#    end

    let(:heading) { 'Sample App' }
    let(:page_title) { '' }  
    it_should_behave_like "all static pages" 

# it "should have the right title" do
   #   should have_selector('title', text: "#{base_title}")
   # end
   #  it {should have_selector('title', text: full_title(''))}
   #  it {should have_xpath("//title", text: full_title(''))}
   #  it {should_not have_selector('title', text: '| Home')}
  end

  describe "Help page" do
     before {visit help_path}
#    it "should have the content 'Help'" do
#      visit '/static_pages/help'
#      page.should have_content('Help')
#    end
    let(:heading) { 'Help' }
    let(:page_title) {full_title('Help')}
    it_should_behave_like "all static pages"
    # it {should have_selector('h1', :text => 'Help') }
    # it {should have_selector('title', text: full_title('Help')) }
    # it {should have_xpath("//title", text: full_title('Help'))}
    # it { should have_title(full_title('Help')) }

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
    before { visit about_path }
    let(:heading) {'About Us'}
    let(:page_title) {full_title('About') }
    it_should_behave_like "all static pages"
    # it {should have_selector('h1', :text => 'About Us') }
    # it {should have_selector('title', text: "#{base_title} | About")}
    # it {should have_xpath("//title", text: full_title('About'))}
#    it "should have the right title" do
#      visit '/static_pages/about'
#      page.should have_selector('title',
#                    :text => "#{base_title} | About")
#    end
    # it { should have_title(full_title('About')) }
  end
  
  describe "Contact page" do
    before {visit contact_path}
    # it {should have_selector('h1', :text => 'Contact') }
    let(:heading) {'Contact'} 
    let(:page_title) {full_title('Contact')}
    it_should_behave_like "all static pages"
    # it {should have_selector('title', text: "#{base_title} | Contact")}
    # it {should have_xpath("//title", text: full_title('Contact'))}
#    it "should have the right title" do
#      visit '/static_pages/contact'
#      page.should have_selector('title',
#                    :text => "#{base_title} | Contact")
#    end
  end
 
  it "should have the right links on the layout" do
    visit root_path
     click_link "About"
      # page.should have_selector('title', full_title('A22bout Us'))
       page.should have_selector 'h1', text: "About"
     click_link "Help"
       page.should have_selector 'h1', text: "Help"
     click_link "Contact"
       page.should have_selector 'h1', text: "Contact"
     click_link "Home"
     click_link "Sign up now!"
       page.should have_selector 'h1', text: "Sign up"
     click_link "sample app"
       page.should have_selector 'h1', text: "Welcome to the Sample App"
  end
end
