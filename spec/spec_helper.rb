require 'selenium-webdriver'
RSpec.configure do | config |
  config.before(:all) do
    @browser = Selenium::WebDriver.for :firefox
  end

  config.after(:all) do
    @browser.quit
  end
end
$:.unshift(File.join(File.dirname(__FILE__), '**', '*.rb'))

require 'web_driver_base_spec'

Dir[File.dirname(__FILE__) + '/pages/**/*.rb'].each {|file| require file }

include WebDriverBaseSpec