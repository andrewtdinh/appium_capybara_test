# require_relative 'page'

module Pages
  class LandingPage < SitePrism::Page
    # include Capybara::DSL
    ###########   WELCOME OBJECTS   #############
    element :signup_button, :id, 'welcome_signup_button'
    element :login_button, :id, 'welcome_login_button'
    # LOGIN_BUTTON_LOCATOR          = {id: 'welcome_login_button'}
    # BROWSE_PROVIDERS_LINK_LOCATOR = {id: 'welcome_login_button_browse_provider_text_view'}
    # login_button = id('android:id'/welcome_login_button)

    #############  CLICK LOCATORS   #############
    def click_signup_button
      signup_button.click
    end

    def click_login_button
      login_button.click
    end

    # def click_browse_providers_link
    #   click_on BROWSE_PROVIDERS_LINK_LOCATOR
    # end
  end
end

