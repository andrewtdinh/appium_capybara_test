# require_relative 'capybara_init'
require 'appium_capybara'
require 'rspec'
require 'site_prism'
# pages
# require 'pages/landing_page'
require './pages/home_page'

include RSpec::Expectations

# emulator -avd Nexus_5_API_22_X86 -gpu on
# appium --avd @Nexus_5_API_19
ENV['SERVER']||='qa1'
# ENV['PLATFORM']||='ios'
ENV['PLATFORM']||='android'
ENV['SERVER_LOCATION']||='local'


def get_caps

  if ENV['SERVER_LOCATION']=='local'

    case ENV['PLATFORM']

      when 'ios'

      then puts "USING #{ENV['PLATFORM']}"
      caps = Appium.load_appium_txt file: File.join(Dir.pwd, './spec/config/ios/appium.txt')

      when 'android'

      then puts "USING #{ENV['PLATFORM']}"
      caps = Appium.load_appium_txt file: File.join(Dir.pwd, './spec/config/android/appium.txt')
      else
        abort "[ERROR ] Cant  platform #{ENV['PLATFORM']}"
    end

  else #remote

    case ENV['PLATFORM']

      when 'ios'

      then puts "USING #{ENV['PLATFORM']}"
      caps = Appium.load_appium_txt file: File.join(Dir.pwd, './spec/config/appium_config/ios_remote/appium.txt')

      when 'android'

      then puts "USING #{ENV['PLATFORM']}"
      caps = Appium.load_appium_txt file: File.join(Dir.pwd, './spec/config/appium_config/android_remote/appium.txt')
      else
        abort "[ERROR ] Cant  platform #{ENV['PLATFORM']}"
    end

  end

end

Capybara.register_driver(:appium) do |app|
  opts = get_caps
  Appium::Capybara::Driver.new app, opts
end

RSpec.configure do |config|
  config.after(:each) do |result|
    Capybara.current_session.driver.quit
  end
end

Capybara.default_driver = :appium
