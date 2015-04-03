require 'rubygems'
require 'selenium-webdriver'

module WebModule

  def self.GetDriver ver
    puts ver
    Selenium::WebDriver.for ver
  end

  def self.SetTextById driver, key, value
    element = driver.find_element :id => key
    element.send_keys value
  end

  def self.SetTextByName driver, key, value
    element = driver.find_element :name => key
    element.send_keys value
  end

  def self.SubmitById driver, key
    element = driver.find_element :id => key
    element.submit
  end

  def self.SubmitByName driver, key
    element = driver.find_element :name => key
    element.submit
  end

  def self.GetTextById driver, key
    element = driver.find_element :id => key
    element.value
  end

  def self.SetDropDownListBox driver, key, index
    select = Selenium::WebDriver::Support::Select.new(driver.find_element(:id,key))
    select.select_by(:index, index)
  end

  def self.ClickByName driver, key
    element = driver.find_element :name => key
    element.click
  end
end



