class Baseclass

  attr_reader :browser

  def initialize(browser)
    @browser = browser
  end

  def visit(url='/')
    browser.get(ENV['base_url'] + url)
  end

  def find(locator)
    browser.find_element locator
  end

  def clear(locator)
    browser(locator).clear
  end

  def type(locator, input)
    find(locator).send_keys input
  end

  def click_on(locator)
    find(locator).click
  end

  def displayed?(locator)
    browser.find_element(locator).displayed?
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end

  def text_of(locator)
    find(locator).text
  end

  def title
    browser.title
  end

  def wait_for(seconds=5)
    Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
  end

end
