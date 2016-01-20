# require_relative 'page'

module Pages
  class LandingPage < SitePrism::Page
    include Capybara::DSL
    ###########   WELCOME OBJECTS   #############
    element :signup_button, :id, 'welcome_signup_button'
    element :login_button, :id, 'welcome_login_button'
    element :browse_providers_link, :id, 'welcome_login_button_browse_provider_text_view'
    element :seeking_therapy_text, :id, 'welcome_seeking_therapy_text_view'


    #############  CLICK LOCATORS   #############
    def click_signup_button
      signup_button.click
    end

    def click_login_button
      login_button.click
    end
  end
end

