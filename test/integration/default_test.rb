class DefaultTest < ActionDispatch::IntegrationTest
  test 'should load the landing page' do
    visit '/'
    text_expectation = /You need to sign in or sign up before continuing/
    assert_match text_expectation, page.body
  end
end
