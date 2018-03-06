module LoginAction
  def send_correct_password
    send_text 'admin', password
  end

  def send_incorrect_password
    send_text 'admin1', password
  end

  def send_correct_login
    send_text 'admin', login
  end

  def send_incorrect_login
    send_text 'admin1', login
  end
end
