require_relative  'WebModule'

puts 'demo:'

#driver = Selenium::WebDriver.for :chrome
driver = WebModule.GetDriver :chrome
driver.get 'https://www.google.com.tw'

WebModule.SetTextByName driver, 'q', 'asp.net'
#element = driver.find_element :name => 'q'
#element.send_keys 'sony'

WebModule.SubmitByName driver, 'btnK'
#element = driver.find_element :name => 'btnK'
#puts 'element text: ' + element.attribute('value')
#element.submit

sleep 2
driver.save_screenshot 'google.png'
driver.get 'http://tw.yahoo.com'
sleep 2

WebModule.SetTextById driver, 'UHSearchBox', 'aaa3'
element =  driver.find_element :id => 'UHSearchWeb'
element.click
sleep 2
driver.save_screenshot 'yahoo.png'
driver.quit