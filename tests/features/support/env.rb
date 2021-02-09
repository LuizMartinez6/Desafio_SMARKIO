require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'yaml'

AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file('features\data\homolog.yml')


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 15
end

