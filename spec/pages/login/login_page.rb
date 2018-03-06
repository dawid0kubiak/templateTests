module LoginPage

  def login
    wait_and_find_element(id: 'loginform:login', timeout: 10)
  end

  def password
    wait_and_find_element(id: 'loginform:password')
  end

  def submit
    wait_and_find_element(id: 'loginform:submita')
  end

  def message_error
    wait_and_find_element(class: 'ui-messages-error-summary')
  end

  def login_label
    wait_and_find_element(id: 'loginLabel')
  end

end