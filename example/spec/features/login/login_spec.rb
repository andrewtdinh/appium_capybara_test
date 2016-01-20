require_relative '../../spec_helper_test'
# require './pages/welcome'
# require './pages/login'
require './pages/landing_page'


describe 'Login tests' do
  before(:each) do
    @landing_page = Pages::LandingPage.new
  end

  it 'should find all the elements on the landing page' do
    expect(@landing_page.seeking_therapy_text).to be_truthy
    expect(@landing_page.get_started_text).to be_truthy
    expect(@landing_page.welcome_signup_button).to be_truthy
    expect(@landing_page.welcome_login_button).to be_truthy
    expect(@landing_page.browse_providers_link).to be_truthy
    puts 'All elements we expect are present'
  end
  it 'should be able to login as ph+c1' do
    expect(@landing_page.seeking_therapy_text).to be_truthy
    @landing_page.click_login_button

    # login.click_login_button
  end
end
