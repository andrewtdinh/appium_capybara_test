require_relative '../../spec_helper_test'
# require './pages/welcome'
# require './pages/login'
require './pages/landing_page'


describe 'Android Test' do
  before(:each) do
    @landing_page = Pages::LandingPage.new
    # login = Pages::
  end

  it 'should be able to login as ph+c1' do
    @landing_page.click_login_button
    # login.set_email_field('ph+c1@breakthrough.com')
    # login.set_password_field('asdfasdf')
    # login.click_login_button
  end
end
