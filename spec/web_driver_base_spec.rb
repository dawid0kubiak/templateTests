module WebDriverBaseSpec

  def open(url)
    @browser.get url
  end

  def click(element)
    element.click
  end

  def send_text(text, element)
    element.clear
    element.send_keys text
  end

  def show(element)
    element.text
  end

  def sign_in
    send_text 'admin', wait_and_find_element(id: 'loginform:login')
    send_text 'admin', wait_and_find_element(id: 'loginform:password')
    click wait_and_find_element(id: 'loginform:submita')
  end

  def element_exist?(*args)
    @browser.find_elements(args.first).size > 0
  end

  def wait_and_find_element(*args)
    args = args.first
    timeout = args.keys.include?(:timeout) ? args[:timeout] : 30
    while timeout != 0 do
      if element_exist? args
        return @browser.find_element(args)
      else
        sleep 1
        timeout = timeout - 1
      end
    end
    raise 'Element not exist'
  end

end


