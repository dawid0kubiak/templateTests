include LoginPage
include LoginAction

describe 'Login test' do
  before do
    open 'http://'
  end
  it 'bad login' do
    send_incorrect_login
    send_correct_password
    click submit
    expect(show message_error).to eq('Zły login lub hasło.')
  end

  it 'bad password' do
    send_correct_login
    send_incorrect_password
    click submit
    expect(show message_error).to eq('Zły login lub hasło.')
  end

  it 'good login' do
    send_correct_login
    send_correct_password
    click submit
    expect(show login_label).to eq('admin')
  end
end
